import { Component } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ApiserviceService } from '../apiservice.service';
import Swal from 'sweetalert2';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-add-products',
  templateUrl: './add-products.component.html',
  styleUrls: ['./add-products.component.scss']
})
export class AddProductsComponent {
  myForm: FormGroup | any;
  prod_names: any;
  insurance: any;
  vendor_names: any;
  id:any;
  constructor(private apiservice: ApiserviceService, private router: Router,private route: ActivatedRoute) { }
  ngAfterViewInit(): void {
    this.apiservice.view_vendors().subscribe((res) => {
      this.vendor_names = res;
    })
    this.apiservice.view_names().subscribe((res) => {
      this.prod_names = res;
    })
    this.apiservice.view_insurance().subscribe((res) => {
      this.insurance = res;
    })
  }
  ngOnInit(): void {
    this.id = this.route.snapshot.params['id'];
    this.myForm = new FormGroup(
      {
        vendorname: new FormControl('', Validators.required),
        patientname: new FormControl('', Validators.required),
        patientage: new FormControl('', Validators.required),
        patientsex: new FormControl('', Validators.required),
        doa: new FormControl('', Validators.required),
        dod: new FormControl('', Validators.required),
        doi: new FormControl('', Validators.required),
        opno: new FormControl('', Validators.required),
        ipno: new FormControl('', Validators.required),
        hospdetail: new FormControl('', Validators.required),
        trigger: new FormControl('', Validators.required),
        claimno: new FormControl('', Validators.required),
        insurance_tpa: new FormControl('', Validators.required),
        policy_type: new FormControl('', Validators.required),
        doj: new FormControl(''),
        claim_type: new FormControl('', Validators.required),
        case_type: new FormControl('', Validators.required),
        fees: new FormControl('', Validators.required),
        incentive: new FormControl('', Validators.required),
        mrd: new FormControl('', Validators.required),
        transport: new FormControl('', Validators.required),
        invoice:new FormControl(false),
        created: new FormControl('')
      }
    );
    this.apiservice.view_sales_id(this.id).subscribe((res:any) => {
      if(res.status=='ok'){
        this.myForm.get('vendorname').setValue(res.vendor);
        this.myForm.get('patientname').setValue(res.pname);
        this.myForm.get('patientage').setValue(res.age);
        this.myForm.get('patientsex').setValue(res.sex);
        this.myForm.get('doa').setValue(res.doa);
        this.myForm.get('dod').setValue(res.dod);
        this.myForm.get('doi').setValue(res.doi);
        this.myForm.get('opno').setValue(res.opno);
        this.myForm.get('ipno').setValue(res.ipno);
        this.myForm.get('hospdetail').setValue(res.hosp_details);
        this.myForm.get('trigger').setValue(res.triggers);
        this.myForm.get('claimno').setValue(res.claimno);
        this.myForm.get('insurance_tpa').setValue(res.insurance_tpa);
        this.myForm.get('policy_type').setValue(res.policy_type);
        this.myForm.get('doj').setValue(res.doj);
        this.myForm.get('claim_type').setValue(res.claim_type);
        this.myForm.get('case_type').setValue(res.case_type);
        this.myForm.get('fees').setValue(res.fees);
        this.myForm.get('incentive').setValue(res.incentive);
        this.myForm.get('mrd').setValue(res.mrd);
        this.myForm.get('transport').setValue(res.transportation);
        this.myForm.get('invoice').setValue(res.invoice);
        this.myForm.get('incentive').setValue(res.incentive);
        this.myForm.get('created').setValue(res.created);
      }
    })
  }
  onSubmit() {
    this.myForm.markAllAsTouched();
    console.log(this.myForm.get('invoice').value);
    
    // alert('Data Added Successfully');
    if (this.myForm.valid) {
      var data = Array();
      data.push(this.myForm.get('vendorname').value);
      data.push(this.myForm.get('patientname').value);
      data.push(this.myForm.get('patientage').value);
      data.push(this.myForm.get('patientsex').value);
      data.push(this.myForm.get('doa').value);
      data.push(this.myForm.get('dod').value);
      data.push(this.myForm.get('doi').value);
      data.push(this.myForm.get('opno').value);
      data.push(this.myForm.get('ipno').value);
      data.push(this.myForm.get('hospdetail').value);
      data.push(this.myForm.get('trigger').value);
      data.push(this.myForm.get('claimno').value);
      data.push(this.myForm.get('insurance_tpa').value);
      data.push(this.myForm.get('policy_type').value);
      data.push(this.myForm.get('doj').value);
      data.push(this.myForm.get('claim_type').value);
      data.push(this.myForm.get('case_type').value);
      data.push(this.myForm.get('fees').value);
      data.push(this.myForm.get('mrd').value);
      data.push(this.myForm.get('transport').value);
      data.push(this.id);
      data.push(this.myForm.get('invoice').value);
      data.push(this.myForm.get('incentive').value);
      data.push(this.myForm.get('created').value);
      this.apiservice.add_products(data).subscribe((res: any) => {
        Swal.fire({
          title: 'Intimation Added Successfully',
          icon: 'success',
        })
        // alert('Data Added Successfully');
        this.myForm.reset();
        this.router.navigate(['view/' + res.gicsid])
      })
    }
  }
}
