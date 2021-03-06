<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
   <jsp:include page="../common/head.jsp"/>
</head>
<body>
   
   <jsp:include page="../common/navbar.jsp"/>

   <div class="container">
      <div class="row-fluid row-intro">
         <div class="span12">
            <h3>Column autosizing (XLS/XLSX only)</h3>
            <p>
               By default, PDF are exported in
               <code>landscape</code>
               orientation but you can switch to
               <code>portrait</code>
               if you wish.
            </p>
         </div>
      </div>
      
      <div class="row-fluid">
         <div class="span12">

            <datatables:table id="myTableId" url="/persons" serverSide="true" processing="true" export="xls">
               <datatables:column title="Id" property="id" />
               <datatables:column title="FirstName" property="firstName" />
               <datatables:column title="LastName" property="lastName" />
               <datatables:column title="City" property="address.town.name" />
               <datatables:column title="Mail" property="mail" />
               <datatables:column title="Birth date" property="birthDate" renderFunction="moment,custom-rendering#toDate" />
               <datatables:export type="xls" cssClass="btn" url="/export.xls" autoSize="false" />
            </datatables:table>

         </div>
      </div>
   </div>
</body>