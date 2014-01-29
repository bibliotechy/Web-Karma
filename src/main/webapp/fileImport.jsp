<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>

<!--
----------------------------------------
	Dialog to select File Format: CSV/XML/..
----------------------------------------- 
 -->
<div class="modal fade" id="fileFormatSelectionDialog" tabindex="-1">
  <div class="modal-dialog">
		<div class="modal-content">
			<form class="bs-example bs-example-form" role="form">
		     <div class="modal-header">
			      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			       <h4 class="modal-title">Confirm File Format</h4>
			  </div>
			  <div class="modal-body">
			        
					<div class="radio">
					  <label>
					    <input type="radio" name="FileFormatSelection" id="CSVFileFormat" value="CSVFile">
					    CSV Text File
					  </label>
					</div>
					<div class="radio">
					  <label>
					    <input type="radio" name="FileFormatSelection" id="JSONFileFormat" value="JSONFile" checked>
					    JSON
					  </label>
					</div>
					<div class="radio">
					  <label>
					    <input type="radio" name="FileFormatSelection" id="XMLFileFormat" value="XMLFile">
					    XML
					  </label>
					</div>
					<div class="radio">
					  <label>
					    <input type="radio" name="FileFormatSelection" id="XLSFileFormat" value="ExcelFile">
					    Excel Spreadsheet
					  </label>
					</div>
					<div class="radio">
					  <label>
					    <input type="radio" name="FileFormatSelection" id="OWLFileFormat" value="Ontology">
					    OWL Ontology
					  </label>
					</div>
					<div>
						<hr />
					</div>
					<div class="checkbox">
					  <label>
					    <input type="checkbox" name="RevisionCheck">
					    Revision of worksheet <select id="revisedWorksheetSelector"></select>
					  </label>
					</div>
					<div class="error" style="display: none" id="fileFormatError">Please select the file format!</div>
			  </div>
			  <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
			        <button type="submit" class="btn btn-primary" id="btnSave">Next</button>
			  </div>
			 </form>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
			
<!--
----------------------------------------
	Dialog to File OPtions: Encoding, NUmber of lines to import etc
----------------------------------------- 
 -->			

<div class="modal fade" id="fileOptionsDialog" tabindex="-1">
  <div class="modal-dialog modal-wide" id='fileOptionsDialogInner'>
		<div class="modal-content">
			<form class="bs-example bs-example-form" role="form">
		     <div class="modal-header">
			      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			       <h4 class="modal-title">File Import Options: <span id="filename"></span></h4>
			  </div>
			  <div class="modal-body">
		        	<div class="row" id="optionsLine1">
		        		<div class="col-sm-2 fileOptions" id="colDelimiterSelector">
							<div class="form-group">
								<label for="delimiterSelector">Column delimiter</label>
								<select id="delimiterSelector" class="form-control ImportOption">
	                                <option>comma</option>
	                                <option>tab</option>
	                                <option>space</option>
	                            </select>
							</div>
						</div>
						<div class="col-sm-2 fileOptions"  id="colTextQualifier">
							<div class="form-group">
								<label for="textQualifier">Text qualifier</label>
								<input class="form-control ImportOption" type="text" placeholder='"' id="textQualifier">
							</div>
						</div>
		        		<div class="col-sm-2 fileOptions" id="colHeaderStartIndex">
		        			<div class="form-group">
								<label for="headerStartIndex">Header start index</label>
								<input class="form-control ImportOption" type="number" placeholder="1" id="headerStartIndex" required>
							</div>
		        		</div>
		        		<div class="col-sm-2 fileOptions" id="colStartRowIndex">
		        			<div class="form-group">
								<label for="startRowIndex">Data Start index</label>
								<input class="form-control ImportOption" type="number" placeholder="2" id="startRowIndex" required>
							</div>
		        		</div>
		        		<div class="col-sm-2 fileOptions" id="colEncoding">
		        			<div class="form-group">
								<label for="encoding">Encoding</label>
								<select id="encoding" class="form-control ImportOption">
                       				<%@include file="encoding.jsp" %>
                       			</select>
							</div>
		        		</div>
		        		<div class="col-sm-2 fileOptions" id="colMaxNumLines">
		        			<div class="form-group">
								<label for="maxNumLines" id="lblMaxNumLines">Rows to import</label>
								<input class="form-control ImportOption" type="number" placeholder="1" id="maxNumLines">
                                   <span class="help-block">Enter 0 to import all rows</span>
							</div>
		        		</div>
		        	</div>

					<div id="previewTableDiv" style="overflow:auto">
		                <h4>Preview (Top 5 Rows)</h4>
		                <table id="previewTable" class="table table-striped table-condensed"></table>
		            </div>
			  </div>
			  <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
			        <button type="submit" class="btn btn-primary" id="btnSave">Import</button>
			  </div>
		</div><!-- /.modal-content -->
		</form>
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
			
        
</body>
</html>