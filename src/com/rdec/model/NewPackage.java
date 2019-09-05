package com.rdec.model;

public class NewPackage {
	private String packageName;
	private int fees;
	
	public NewPackage() {
		
	}

	public NewPackage(String packageName, int fees) {
		super();
		this.packageName = packageName;
		this.fees = fees;
	}

	public String getPackageName() {
		return packageName;
	}

	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}

	public int getFees() {
		return fees;
	}

	public void setFees(int fees) {
		this.fees = fees;
	}
	

}
