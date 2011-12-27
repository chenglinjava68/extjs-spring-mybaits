package org.jason.activiti.bpmn.RequestLeave;

import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngines;
import org.activiti.engine.RepositoryService;

public class Deploy {
	public static void main(String[] args) {
		ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
		RepositoryService repositoryService = processEngine
				.getRepositoryService();
		repositoryService
				.createDeployment()
				.addClasspathResource(
						"org/jason/activiti/bpmn/RequestLeave/EmpSubProcess.bpmn20.xml")
				.addClasspathResource(
						"org/jason/activiti/bpmn/RequestLeave/EmpSubProcess.png")
				.addClasspathResource(
						"org/jason/activiti/bpmn/RequestLeave/GroupLeaderSubProcess.bpmn20.xml")
				.addClasspathResource(
						"org/jason/activiti/bpmn/RequestLeave/GroupLeaderSubProcess.png")
				.addClasspathResource(
						"org/jason/activiti/bpmn/RequestLeave/RequestLeaveProcess.bpmn20.xml")
				.addClasspathResource(
						"org/jason/activiti/bpmn/RequestLeave/RequestLeaveProcess.png")
				.deploy();
	}
}
