package PersonalProjects.model;

import java.util.List;

public interface LeaseDao {

	public void createNewLease();
	public List<Lease> getLeasesForUnit(int unitNumber);
	public List<Lease> getCurrentLeases();
}
