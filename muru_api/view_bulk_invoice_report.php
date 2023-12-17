<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';

$response = [];

$caseid = '';

$check1 = $dbcon->query("SELECT * FROM invoice where bulk_status=1;");
if ($check1->num_rows > 0) {
    for ($j = 0; $j < $check1->num_rows; $j++) {
        $result1 = mysqli_fetch_assoc($check1);
        $fees = 0;
        $incentive = 0;
        $tranportation = 0;
        $mrd = 0;
        $claimtype = [];
        $consol = '';
        $caseid = $result1['intimations_id'];
        
        $resp_status = new stdClass;
        
        $resp_status->id = $result1['id'];
        $sql = "SELECT
x.*,
y.invoice_no,
y.created_date,
z.claimno,
z.claim_type,
z.fees,
z.incentive,
z.transportation,
z.mrd,
a.iname,
a.address1,
a.address2,
a.gst_type,
a.gstin AS gstin_tpa
FROM
company x,
intimations z left join invoice y ON FIND_IN_SET(z.id, y.intimations_id) > 0,
insurance a
WHERE
a.id = z.insurance_tpa AND z.id IN ($caseid);";
        $check = $dbcon->query($sql);
        if ($check->num_rows > 0) {
            for ($i = 0; $i < $check->num_rows; $i++) {
                $result = mysqli_fetch_assoc($check);
                if ($i == 0) {
                    $resp_status->status = 'ok';
                    $resp_status->created = date('d-M-Y', $result['created_date']);
                    $resp_status->invoice = $result['invoice_no'];

                    $resp_status->iname = $result['iname'];
                    $resp_status->address1 = $result['address1'];
                    $resp_status->address2 = $result['address2'];
                    $resp_status->gstin_tpa = $result['gstin_tpa'];
                    $resp_status->gst_type = $result['gst_type'] == null ? 'IGST' : $result['gst_type'];

                    $resp_status->company_name = $result['company_name'];
                    $resp_status->pan = $result['pan'];
                    $resp_status->gstin = $result['gstin'];
                    $resp_status->hsn = $result['hsn'];
                    $resp_status->description = $result['description'];
                    $resp_status->bank = $result['bank'];
                    $resp_status->branch = $result['branch'];
                    $resp_status->accno = $result['accno'];
                    $resp_status->ifsc = $result['ifsc'];
                }
                $claimtype[] = $result['claim_type'];
                $fees += $result['fees'];
                $incentive += $result['incentive'];
                $transportation += $result['transportation'];
                $mrd += $result['mrd'];
            }
            $occurrences = array_count_values($claimtype);
            foreach ($occurrences as $element => $count) {
                $countFormatted = str_pad($count, 2, '0', STR_PAD_LEFT);
                $consol .= "$element - $countFormatted\n";
            }
            $resp_status->claim_type = $consol;
            $resp_status->fees = $fees;
            $resp_status->incentive = $incentive;
            $resp_status->transport = $transportation;
            $resp_status->mrd = $mrd;

           $response[]=$resp_status;
        }
    }
    echo json_encode($response);
}
mysqli_close($dbcon);
