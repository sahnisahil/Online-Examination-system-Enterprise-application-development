<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="t" uri="http://myfaces.apache.org/tomahawk"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
<style>
.customClass {
	background-color: aliceblue;
	width: 40%;
	border-radius: 10px;
	margin-top: 2%;
}
</style>
</head>
<body style="background-color: graytext;">
	<f:view>

		<h:form>
			<!--center> <a href="index.jsp">Home</a> </center> <br-->
			<center
				style="background-color: white; width: 20%; border-radius: 10px">
				<h:commandLink value="Switch User"
					action="#{databaseAccessBean.switchUser}" />
				<br>

				<h:commandLink value="Logout" action="#{databaseAccessBean.logout}" />
			</center>
			<center
				style="background-color: white; width: 20%; border-radius: 10px; margin-top: 2%">
				<a href="Documentation/user_guide.jsp" target="_blank">User's
					Guide</a> <br> <a href="Documentation/programmerDocumentation.jsp"
					target="_blank">Programmer's Documentation</a>
			</center>
		</h:form>
		<center
			style="background-color: appworkspace; width: 50%; border-radius: 10px">
			<h:messages globalOnly="true" />
		</center>
		<center>
			<div
				style="background-color: aliceblue; width: 95%; border-radius: 10px; margin-top: 2%">
				<h:form>
					<h:panelGrid columns="9" cellspacing="20">

						<h:commandLink action="#{adminActionBean.updateDB}"
							value="Create User Table">
							<f:param name="tableName" value="createUserTable" />
						</h:commandLink>
						<h:commandLink action="#{adminActionBean.updateDB}"
							value="Create Courses Table">
							<f:param name="tableName" value="createCourseTable" />
						</h:commandLink>
						<h:commandLink action="#{adminActionBean.updateDB}"
							value="Create Teach Table">
							<f:param name="tableName" value="createTeachTable" />
						</h:commandLink>
						<h:commandLink action="#{adminActionBean.updateDB}"
							value="Create Question Table">
							<f:param name="tableName" value="createQuestionTable" />
						</h:commandLink>						
						<h:commandLink action="#{adminActionBean.updateDB}"
							value="Create Test Table">
							<f:param name="tableName" value="createTestTable" />
						</h:commandLink>
						<h:commandLink action="#{adminActionBean.updateDB}"
							value="Create Enroll Table">
							<f:param name="tableName" value="createEnrollTable" />
						</h:commandLink>
						<h:commandLink action="#{adminActionBean.updateDB}"
							value="Create Login Detail Table">
							<f:param name="tableName" value="createloginDetailTable" />
						</h:commandLink>
						<h:commandLink action="#{adminActionBean.updateDB}"
							value="Create Roster Table">
							<f:param name="tableName" value="createRosterTable" />
						</h:commandLink>
						<h:commandLink action="#{adminActionBean.updateDB}"
							value="Create Result Table">
							<f:param name="tableName" value="createResultTable" />
						</h:commandLink>

						<h:commandLink action="#{adminActionBean.viewTable}"
							value="View User Table">
							<f:param name="tableName" value="userTable" />
						</h:commandLink>
						<h:commandLink action="#{adminActionBean.viewTable}"
							value="View Courses Table">
							<f:param name="tableName" value="coursesTable" />
						</h:commandLink>
						<h:commandLink action="#{adminActionBean.viewTable}"
							value="View Teach Table">
							<f:param name="tableName" value="teachTable" />
						</h:commandLink>
						<h:commandLink action="#{adminActionBean.viewTable}"
							value="View Question Table">
							<f:param name="tableName" value="questionTable" />
						</h:commandLink>
						<h:commandLink action="#{adminActionBean.viewTable}"
							value="View Test Table">
							<f:param name="tableName" value="testTable" />
						</h:commandLink>
						<h:commandLink action="#{adminActionBean.viewTable}"
							value="View Enroll Table">
							<f:param name="tableName" value="enrollTable" />
						</h:commandLink>
						<h:commandLink action="#{adminActionBean.viewTable}"
							value="View Login Details Table">
							<f:param name="tableName" value="loginDetailsTable" />
						</h:commandLink>
						<h:commandLink action="#{adminActionBean.viewTable}"
							value="View Roster  Table">
							<f:param name="tableName" value="rosterTable" />
						</h:commandLink>
						<h:commandLink action="#{adminActionBean.viewTable}"
							value="View Result  Table">
							<f:param name="tableName" value="resultTable" />
						</h:commandLink>

						<h:commandLink action="#{adminActionBean.updateDB}"
							value="Drop User Table">
							<f:param name="tableName" value="dropUserTable" />
						</h:commandLink>
						<h:commandLink action="#{adminActionBean.updateDB}"
							value="Drop Courses Table">
							<f:param name="tableName" value="dropCoursesTable" />
						</h:commandLink>
						<h:commandLink action="#{adminActionBean.updateDB}"
							value="Drop Teach Table">
							<f:param name="tableName" value="dropTeachTable" />
						</h:commandLink>
						<h:commandLink action="#{adminActionBean.updateDB}"
							value="Drop Question Table">
							<f:param name="tableName" value="dropQuestionTable" />
						</h:commandLink>
						<h:commandLink action="#{adminActionBean.updateDB}"
							value="Drop Test Table">
							<f:param name="tableName" value="dropTestTable" />
						</h:commandLink>
						<h:commandLink action="#{adminActionBean.updateDB}"
							value="Drop Enroll Table">
							<f:param name="tableName" value="dropEnrollTable" />
						</h:commandLink>
						<h:commandLink action="#{adminActionBean.updateDB}"
							value="Drop Login Detail Table">
							<f:param name="tableName" value="dropLoginDetailsTable" />
						</h:commandLink>
						<h:commandLink action="#{adminActionBean.updateDB}"
							value="Drop Roster Table">
							<f:param name="tableName" value="dropRosterTable" />
						</h:commandLink>
						<h:commandLink action="#{adminActionBean.updateDB}"
							value="Drop Result Table">
							<f:param name="tableName" value="dropResultTable" />
						</h:commandLink>
					</h:panelGrid>
				</h:form>
			</div>
		</center>
		<center>
			<center
				style="background-color: aliceblue; width: 95%; border-radius: 10px; margin-top: 2%">
				<h:form rendered="#{adminActionBean.renderTable}">
					<h:panelGrid>

						<t:dataTable value="#{adminActionBean}" var="row"
							style="table-layout: fixed" border="1" cellspacing="0"
							cellpadding="1" width="1270">

							<t:columns value="#{adminActionBean.colList}" var="column">

								<b> <h:outputText value="#{column}" /></b>
							</t:columns>
						</t:dataTable>

						<t:dataTable value="#{adminActionBean.tableArray}" id="tableData"
							var="row" style="table-layout: fixed" rows="5" border="1"
							cellspacing="0" cellpadding="1" width="1270">
							<h:column id="column1">
								<h:selectBooleanCheckbox id="sbc1"
									value="#{adminActionBean.selected[row]}" />
							</h:column>

							<t:columns value="#{adminActionBean.columnList}" var="column">

								<h:outputText value="#{row[column]}" />
							</t:columns>

						</t:dataTable>
					<t:dataScroller id="dataScrollerId" for="tableData" fastStep="10"
							pageIndexVar="pageIndex" renderFacetsIfSinglePage="false" pageCountVar="pageCount" paginator="true" paginatorMaxPages="9"	immediate="true" binding="#{adminActionBean.htmlScroller}">
							<f:facet name="first">
								<t:outputText value="<<"></t:outputText>
							</f:facet>
							<f:facet name="last">
								<t:outputText value=">>"></t:outputText>
							</f:facet>
							<f:facet name="previous">
								<t:outputText value="<"></t:outputText>
							</f:facet>
							<f:facet name="next">
								<t:outputText value=">"></t:outputText>
							</f:facet>
					</t:dataScroller>

					</h:panelGrid>

					<h:commandLink action="#{adminActionBean.setFileUpload}"
						value="Upload Data">
					</h:commandLink>&nbsp;&nbsp;&nbsp;
					<h:commandLink action="#{adminActionBean.exportFile}"
						value="Export Data">
					</h:commandLink>&nbsp;&nbsp;&nbsp;
					<h:commandLink action="#{adminActionBean.renderForInsert}"
						value="Insert Data">
					</h:commandLink>&nbsp;&nbsp;&nbsp;
					<h:commandLink action="#{adminActionBean.deleteData}"
						value="Delete Selected Data">
					</h:commandLink>
				</h:form>
			</center>
		</center>
		<center>
			<center
				style="background-color: aliceblue; width: 90%; border-radius: 10px; margin-top: 2%">
				<h:form rendered="#{adminActionBean.renderInsertData}">
					<t:dataTable value="#{adminActionBean.insertArray}" var="row"
						style="table-layout: fixed"
						 border="1"
						cellspacing="0" cellpadding="1" width="1100">

						<t:columns value="#{adminActionBean.columnList}" var="column">
							<h:outputText value="#{row[column]}" />
						</t:columns>
					</t:dataTable>
					<t:dataTable value="#{adminActionBean.insertDataArray}" var="row"
						style="table-layout: fixed"  border="1"
						cellspacing="0" cellpadding="1" width="1100">

						<t:columns value="#{adminActionBean.columnList}" var="column">
							<h:inputText size="14" id="o3" value="#{row[column]}"></h:inputText>
						</t:columns>
					</t:dataTable>
					<h:commandLink action="#{adminActionBean.insertData}"
						value="Insert Record">
					</h:commandLink>&nbsp;&nbsp;&nbsp;
					
			</h:form>
			</center>
		</center>

		<h:form enctype="multipart/form-data"
			rendered="#{adminActionBean.booleanUpload}">
			<div style="margin-left: 5%;" class="customClass">
				<div style="text-align: center;">
					<h3>
						<h:outputLabel value="Please Select file to be Uploaded:" />
					</h3>
					<t:inputFileUpload value="#{adminActionBean.uploadedFile}"
						storage="file" />
					<h5>
						<h:outputLabel value="Select File Type:" />
					</h5>
					<h:selectOneListbox value="#{adminActionBean.fileType}" size="2">
						<f:selectItem itemValue="t" itemLabel="Tab Delimited" />
						<f:selectItem itemValue="c" itemLabel="Comma Seperated" />
					</h:selectOneListbox>
					<h5>
						<h:outputLabel value="Column Headers Provided:" />
					</h5>
					<h:selectOneListbox value="#{adminActionBean.headersProvided}"
						size="2">
						<f:selectItem itemValue="Y" itemLabel="Yes" />
						<f:selectItem itemValue="N" itemLabel="No" />
					</h:selectOneListbox>
					<br>
					<h:commandLink action="#{adminActionBean.uploadFile}"
						value="Upload">
					</h:commandLink>
				</div>
			</div>
		</h:form>
	</f:view>
</body>
</html>