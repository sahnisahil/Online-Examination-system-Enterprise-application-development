<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="t" uri="http://myfaces.apache.org/tomahawk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>InstructorPage</title>
</head>
<body style= "background-color:#FFF5EE;">
<div id="header">
<img src="logo.png" align="left">
<h1>AssessBoard</h1>
</div>
<f:view>

		<h:form>
		<center> <a href="index.jsp">Home</a> </center><br><br>
		<center> <h:commandLink  value="logout" action="#{databaseAccessBean.logout}"/></center><br><br>
		
		<a href="Documentation/user_guide.jsp" target="_blank">User's Guide</a> <br><br>
		<a href="Documentation/programmerDocumentation.jsp" target="_blank">Programmer's Documentation</a> <br><br>

		</h:form>
		<h:messages globalOnly="true" />


<h:form>
<center>
<hr/>

<h:commandButton type="submit" value="Admin View" 
action="#{actionBeanInstructor.switchToAdmin}" rendered="#{actionBeanInstructor.renderIsAdmin}" /><br/>
<h:commandButton type="submit" value="Switch to Student View" 
action="#{actionBeanInstructor.switchToStudent}"  />


<br />
<hr />
<br />
</center>
</h:form>


    <legend style="font-Weight:bold;font-size:16px">Course Information:</legend>
<h:form id="f1" >

Select Course:
<h:selectOneMenu id="som1" value="#{actionBeanInstructor.courseName}" 
required="true" requiredMessage="Please select a course" 
>
   	<f:selectItem itemValue="" itemLabel="<select>" />
   	<f:selectItems value="#{actionBeanInstructor.courseList}" 
   	var="c" itemLabel="#{c.courseName}" itemValue="#{c.courseName}" />
</h:selectOneMenu>
<br/>

<h:commandButton type="submit" value="Go" action="#{actionBeanInstructor.showCourseDetails}" >
</h:commandButton>

</h:form >

<h:form rendered="#{actionBeanInstructor.renderSection}">


<h:commandButton type="submit" value="Go" onclick="selectCourse();"
action="#{actionBeanInstructor.showSectionDetails}" >
</h:commandButton>

</h:form >
<br/>

<h:form enctype="multipart/form-data" rendered="#{actionBeanInstructor.renderCourseDetails}"> 
<h:outputLabel rendered="#{actionBeanInstructor.renderCourseDetails}">Upload Information:</h:outputLabel>
<h:panelGrid columns="2">
<h:outputLabel value="Select file type:" />
<h:selectOneRadio value="#{actionBeanInstructor.fileType}"  >
   <f:selectItem itemValue="roster" itemLabel="Roster" />
   <f:selectItem itemValue="assessment" itemLabel="Assessment" />	
     			</h:selectOneRadio>
<h:outputLabel value="Select file" />
<t:inputFileUpload value="#{actionBeanInstructor.uploadedFile}" 
storage="file" required="true" />
<h:outputLabel value="File label:"/>
<h:inputText value= "#{actionBeanInstructor.fileName}"/>
 <h:outputLabel value="Assessment Submission date:" />

<t:inputDate type="date" value="#{actionBeanInstructor.dueDate}" autocomplete="on" />

<h:outputLabel value="Duration (in minutes):" />
 <h:inputText value= "#{actionBeanInstructor.duration}" />

 
<h:commandButton type="submit" value="Upload" action="#{actionBeanInstructor.uploadFile}"
 disabled="{actionBeanInstructor.renderUpload}"/>

</h:panelGrid>
</h:form>

<br/>
<h:form  rendered="#{actionBeanInstructor.renderCourseDetails}" style="border: 1px solid  #808080">
<h:outputLabel style="font-Weight:bold;font-size:16px" rendered="#{actionBeanInstructor.renderCourseDetails}">Download Information:</h:outputLabel>
<h:panelGrid columns="3">
<h:outputLabel value="Select Data to Download:" />
<h:selectOneMenu value="#{actionBeanInstructor.dataType}" id="som1"
required="true" requiredMessage="Please select a file type to download"  >
   	<f:selectItem itemValue="" itemLabel="<select>" />
   	<f:selectItem itemValue="sroster" itemLabel="Student Roster" />
   	<f:selectItem itemValue="aroster" itemLabel="Assessment Details" />
   	<f:selectItem itemValue="lroster" itemLabel="Logging details" />
</h:selectOneMenu>
<h:message for="som1" showSummary="true" showDetail="false"></h:message>
<h:commandButton type="submit" value="Download"
action="#{actionBeanInstructor.downloadFile}" />
</h:panelGrid>
</h:form>
<br/>
<h:form>
<h:panelGrid columns="2">
<h:commandButton type="submit" value="Show Assessments" rendered="#{actionBeanInstructor.renderCourseDetails}"
action="#{actionBeanInstructor.showAssessments}" />
<h:commandButton type="submit" value="Show Students Registered" rendered="#{actionBeanInstructor.renderCourseDetails}"
action="#{actionBeanInstructor.showStudentsRegistered}" />

</h:panelGrid>
</h:form>

<h:messages globalOnly="true" />
<h:form id="f3">
<t:dataTable id="dt1" binding="#{actionBeanInstructor.dataTable}"
value="#{actionBeanInstructor.assessmentList}"
var="rowNumber"
rendered="#{actionBeanInstructor.renderAssessmentDetails}"
border="1" cellspacing="0" cellpadding="1"
width="800">
<h:column id="c1">
<f:facet name="header">
<h:outputText>Select</h:outputText>
</f:facet>
        <h:selectBooleanCheckbox id="sbc1" value="#{actionBeanInstructor.checked[rowNumber.assessmentId]}" />
</h:column>
<h:column>
<f:facet name="header">
<h:outputText>AssessmentName</h:outputText>
</f:facet>
<h:outputText value="#{rowNumber.assessmentName}"/>
</h:column>
<h:column>
<f:facet name="header">
<h:outputText>Taken By</h:outputText>
</f:facet>
<h:outputText value="#{rowNumber.takenBy} out of #{rowNumber.totalStudents}"/>
</h:column>
<h:column>
<f:facet name="header">
<h:outputText>Submission</h:outputText>
</f:facet>
<h:commandLink value="Generate Report" action="#{actionBeanInstructor.callGraph}" />
</h:column>
</t:dataTable>

<h:commandLink rendered="#{actionBeanInstructor.renderAssessmentDetails}"  
  style="font-style: bold"
value="Delete Selected Assessments" action="#{actionBeanInstructor.deleteAssessment}"  />
<br/><h:commandLink rendered="#{actionBeanInstructor.renderAssessmentDetails}"  
  style="font-style: bold"
value="Export Selected Assessment" action="#{actionBeanInstructor.exportAssessment}" />


<t:dataTable
value="#{actionBeanInstructor.student_list}"
var="rowNumber"
rendered="#{actionBeanInstructor.renderStudentDetails}"
border="1" cellspacing="0" cellpadding="1"
width="800">
<h:column id="c1"><f:facet name="header">
<h:outputText>Select</h:outputText>
</f:facet>
        <h:selectBooleanCheckbox id="sbc1" value="#{actionBeanInstructor.checked[rowNumber.userId]}" />
</h:column>
<h:column>
<f:facet name="header">
<h:outputText>First Name</h:outputText>
</f:facet>
<h:outputText value="#{rowNumber.firstName}"/>
</h:column>
<h:column>
<f:facet name="header">
<h:outputText>Last Name</h:outputText>
</f:facet>
<h:outputText value="#{rowNumber.lastName}"/>
</h:column>
<h:column>
<f:facet name="header">
<h:outputText>UserName</h:outputText>
</f:facet>
<h:outputText value="#{rowNumber.userName}"/>
</h:column>
</t:dataTable>

<h:commandLink rendered="#{actionBeanInstructor.renderStudentDetails}"  
  style="font-style: bold"
value="Drop Selected Students" action="#{actionBeanInstructor.removeStudent}"  />

</h:form>
</f:view>

</SCRIPT>
</body>
</html>