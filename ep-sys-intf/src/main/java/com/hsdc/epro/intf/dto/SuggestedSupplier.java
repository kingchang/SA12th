package com.hsdc.epro.intf.dto;

import java.io.Serializable;

public class SuggestedSupplier implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 984766912091479183L;
	private String materialNo;
	private String supplierId;
	private String mobileNumber;
	private String emailAddress;
	public SuggestedSupplier(String materialNo, String supplierId,
			String mobileNumber, String emailAddress) {
		super();
		this.materialNo = materialNo;
		this.supplierId = supplierId;
		this.mobileNumber = mobileNumber;
		this.emailAddress = emailAddress;
	}
	public String getMaterialNo() {
		return materialNo;
	}
	public void setMaterialNo(String materialNo) {
		this.materialNo = materialNo;
	}
	public String getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(String supplierId) {
		this.supplierId = supplierId;
	}
	public String getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	@Override
	public String toString() {
		return "SuggestedSupplier [materialNo=" + materialNo + ", supplierId="
				+ supplierId + ", mobileNumber=" + mobileNumber
				+ ", emailAddress=" + emailAddress + "]";
	}

}
