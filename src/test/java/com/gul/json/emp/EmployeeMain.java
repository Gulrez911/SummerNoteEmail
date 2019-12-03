package com.gul.json.emp;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.gul.config.AppConfig;
import com.gul.entity.Employee;
import com.gul.repo.EmployeeRepository;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = AppConfig.class)
@WebAppConfiguration
public class EmployeeMain {

	@Autowired
	EmployeeRepository repository;

	@Test
	public void jsonTest() throws JsonProcessingException {

		Employee employee = new Employee();
		employee.setId(11);
		employee.setFname("Shadab");
		employee.setLname("Farooqui");
		ObjectMapper obj = new ObjectMapper();
		String json = obj.writeValueAsString(employee);
		employee.setAttrb(json);
		System.out.println(json);
		
		repository.save(employee);
		System.out.println("...");
	}

}
