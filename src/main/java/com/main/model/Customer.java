package com.main.model;

import lombok.Data;

@Data
public class Customer 
{
     
     private String cname;
     private String caddr;
     private Float billAmt;
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCaddr() {
		return caddr;
	}
	public void setCaddr(String caddr) {
		this.caddr = caddr;
	}
	public Float getBillAmt() {
		return billAmt;
	}
	public void setBillAmt(Float billAmt) {
		this.billAmt = billAmt;
	}
     
     
}
