package com.searchmarketingapp.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.searchmarketingapp.dto.LeadDto;

@Controller
public class SearchLeadController {
	
	@RequestMapping("/searchAll")
	public String searchAllLead(Model model)
	{
		RestTemplate rt = new RestTemplate();
		LeadDto[] leadDtos = rt.getForObject("http://localhost:8080/api/leads", LeadDto[].class );
		List<LeadDto> leads = Arrays.asList(leadDtos);
		model.addAttribute("leads",leads);
		return "allLead";
		
	}
	
	@RequestMapping("/search")
	public String searchOneLead()
	{
		return "search";		
	}
	
	@RequestMapping("/searchLead")
	public String getOneLead(@RequestParam("id") long id,  Model model)
	{
		RestTemplate rt = new RestTemplate();
		LeadDto lead = rt.getForObject("http://localhost:8080/api/leads/"+id, LeadDto.class );
		model.addAttribute("lead",lead);
		return "leadDetails";
		
	}
	
	
	
}
