package com.springrest.controller;

import static org.mockito.Mockito.mock;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.util.Collections;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import com.springrest.repository.UserRepository;

@RunWith(SpringRunner.class)
@DataJpaTest
@AutoConfigureMockMvc
@AutoConfigureTestDatabase(replace = Replace.NONE)
public class UserLoginControllerTest {

	@Autowired
	private MockMvc mockMvc;

	@Autowired	 
	private UserLoginController userLoginController;
	
	@MockBean
	UserRepository userRepository;
	
	@Before
    public void setup() {
        this.mockMvc = MockMvcBuilders.standaloneSetup(userLoginController).build();
    }
	
	@Test
    public void Home() throws Exception{
		
		
	//	mockMvc.perform(get("/").accept(MediaType.TEXT_HTML)).andExpect(status().isOk());
		
		Mockito.when(userRepository.findAll()).thenReturn(Collections.emptyList());
		
		MvcResult result = mockMvc.perform(
				MockMvcRequestBuilders.get("/").accept(MediaType.APPLICATION_JSON)
				).andReturn();
		System.out.println("MvcResult : "+result);
       Mockito.verify(userRepository).findAll();
		userLoginController = mock(UserLoginController.class);

         this.mockMvc.perform(get("/")
                 .accept(MediaType.parseMediaType("application/json;charset=UTF-8")))
                 .andExpect(status().isOk());
    }
	
}

