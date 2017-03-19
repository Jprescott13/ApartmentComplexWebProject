package PersonalProjects.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;


@Component
public class JdbcUnitDao implements UnitDao {

	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JdbcUnitDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public List<Unit> getAvailableUnits() {
		List<Unit> availableUnits = new ArrayList<>();
		String sqlSelectAvailableUnits = 	"SELECT * " +
											"FROM unit " +
											"JOIN floorPlan ON unit.floorPlan = floorPlan.planId " +
											"WHERE unitNumber NOT IN (SELECT unitNumber " +
																	"FROM unit_lease " +
																	"JOIN lease ON unit_lease.leaseId = lease.leaseId " +
																	"WHERE now() BETWEEN lease.startDate AND lease.endDate)";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAvailableUnits);
		while(results.next()) {
			Unit unit = createUnit(results);
			unit.setFloorPlan(createFloorPlan(results));
			unit.setCurrentLease(null);
			availableUnits.add(unit);
		}
		return availableUnits;
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
	
	private FloorPlan createFloorPlan(SqlRowSet results) {
		FloorPlan floorPlan = new FloorPlan();
		floorPlan.setPlanId(results.getInt("planId"));
		floorPlan.setPlanName(results.getString("planName"));
		floorPlan.setSquareFeet(results.getInt("squareFeet"));
		floorPlan.setBathrooms(results.getInt("bathrooms"));
		floorPlan.setBedrooms(results.getInt("bedrooms"));
		return floorPlan;
	}

}
