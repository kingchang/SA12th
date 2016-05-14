package com.hsdc.epro.intf.dto;

import java.io.Serializable;

public class GenerateRFPControlRequest implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 3302140940283273507L;
	private String materialNo;
	private int prMonth;
	private double quantity;
	private double expectedAmount;
	
	public GenerateRFPControlRequest() {
	}
	
	public GenerateRFPControlRequest(String materialNo, int prMonth,
			double quantity, double expectedAmount) {
		super();
		this.materialNo = materialNo;
		this.prMonth = prMonth;
		this.quantity = quantity;
		this.expectedAmount = expectedAmount;
	}
	public String getMaterialNo() {
		return materialNo;
	}
	public void setMaterialNo(String materialNo) {
		this.materialNo = materialNo;
	}
	public int getPrMonth() {
		return prMonth;
	}
	public void setPrMonth(int prMonth) {
		this.prMonth = prMonth;
	}
	public double getQuantity() {
		return quantity;
	}
	public void setQuantity(double quantity) {
		this.quantity = quantity;
	}
	public double getExpectedAmount() {
		return expectedAmount;
	}
	public void setExpectedAmount(double expectedAmount) {
		this.expectedAmount = expectedAmount;
	}
	@Override
	public String toString() {
		return "GenerateRFPControlRequest [materialNo=" + materialNo
				+ ", prMonth=" + prMonth + ", quantity=" + quantity
				+ ", expectedAmount=" + expectedAmount + "]";
	}
}
