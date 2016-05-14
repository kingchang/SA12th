package com.hsdc.epro.persist;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.hsdc.epro.intf.dao.GenerateRFPDao;
import com.hsdc.epro.intf.dto.SuggestedSupplier;

@Repository
public class GenerateRFPDaoJdbcImpl implements GenerateRFPDao{
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dataSource)
	{
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<SuggestedSupplier> getSuggestedSupplier(String materialNumber,
			String level, int maxCount) {
		String queryStr = "SELECT m.materialNumber as materialNo, "
            + "s.realID as supplierId, s.contactMobile As mobileNumber, "
            + "s.contactEmail as emailAddress "
            + "FROM material m, supplier_material sm, supplier s "
            + "where m.MaterialID = sm.MaterialId "
            + "and sm.supplierID = s.organizationId "
            + "and m.MaterialNumber = ? "
            + "and s.transactionLevel = ?";
		jdbcTemplate.setMaxRows(maxCount);
		List<SuggestedSupplier> suggestedList = 
			jdbcTemplate.query(queryStr, 
					new Object[] {materialNumber, level},
					new RowMapper<SuggestedSupplier>() {
						public SuggestedSupplier mapRow(ResultSet rs, int rowNum) throws SQLException {
							SuggestedSupplier dto = new SuggestedSupplier(
									rs.getString("materialNo"), rs.getString("supplierId"), 
									rs.getString("mobileNumber"), rs.getString("emailAddress"));
							return dto;
						}
					});
		return suggestedList;

	}
}
