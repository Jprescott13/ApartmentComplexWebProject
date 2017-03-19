package PersonalProjects.model;

import java.util.Date;

public class Lease {

	private int leaseId;
	private String firstName;
	private String lastName;
	private Date startDate;
	private Date endDate;

	public int getLeaseId() {
		return leaseId;
	}
	public void setLeaseId(int leaseId) {
		this.leaseId = leaseId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
}
