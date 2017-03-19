package PersonalProjects.model;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

public class JdbcLeaseDao implements LeaseDao {

	private JdbcTemplate jdbcTemplate;
	
	public JdbcLeaseDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public void createNewLease() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Lease> getLeasesForUnit(int unitNumber) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Lease> getCurrentLeases() {
		// TODO Auto-generated method stub
		return null;
	}

	private Unit createUnit(SqlRowSet results) {
		Unit unit = new Unit();
		unit.setUnitNumber(results.getInt("unitNumber"));
		unit.setFloor(results.getInt("floor"));
		unit.setMonthlyPrice(results.getInt("monthlyPrice"));
		return unit;
	}
	
	private Lease createLease(SqlRowSet results) {
		Lease lease = new Lease();
		lease.setLeaseId(results.getInt("leaseId"));
		lease.setFirstName(results.getString("firstName"));
		lease.setLastName(results.getString("lastName"));
		lease.setStartDate(results.getDate("startDate"));
		lease.setEndDate(results.getDate("endDate"));
		return lease;
	}
}
