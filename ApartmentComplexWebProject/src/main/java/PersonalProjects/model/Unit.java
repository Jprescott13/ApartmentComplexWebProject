package PersonalProjects.model;

public class Unit {

	private int unitNumber;
	private int floor;
	private FloorPlan floorPlan;
	private Lease currentLease;
	private int monthlyPrice;
	
	public int getUnitNumber() {
		return unitNumber;
	}
	public void setUnitNumber(int unitNumber) {
		this.unitNumber = unitNumber;
	}
	public int getFloor() {
		return floor;
	}
	public void setFloor(int floor) {
		this.floor = floor;
	}
	public FloorPlan getFloorPlan() {
		return floorPlan;
	}
	public void setFloorPlan(FloorPlan floorPlan) {
		this.floorPlan = floorPlan;
	}
	public Lease getCurrentLease() {
		return currentLease;
	}
	public void setCurrentLease(Lease lease) {
		this.currentLease = lease;
	}
	public int getMonthlyPrice() {
		return monthlyPrice;
	}
	public void setMonthlyPrice(int monthlyPrice) {
		this.monthlyPrice = monthlyPrice;
	}
}
