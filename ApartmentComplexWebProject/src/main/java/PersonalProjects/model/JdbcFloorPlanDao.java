package PersonalProjects.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcFloorPlanDao implements FloorPlanDao{

	private JdbcTemplate jdbcTemplate;
	
	public JdbcFloorPlanDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public List<FloorPlan> getFloorPlans() {
		List<FloorPlan> floorPlans = new ArrayList<>();
		String sqlSelectFloorPlans = "SELECT * FROM floorPlan";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectFloorPlans);
		while(results.next()) {
			FloorPlan floorPlan = createFloorPlan(results);
			floorPlans.add(floorPlan);
		}
		return floorPlans;
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