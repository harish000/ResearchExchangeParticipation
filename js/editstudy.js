/**
 *  Document: aboutl.jsp
 *	Created On: Feb 4, 2016
 *	Authors: Deepak Rohan
 */

//edit_study_answers
//new_study_answers
//var answers = $("#new_study_answers").val()
//alert(answers)
//
//$('#new_study_answers').on('change', function() {
//	 alert( $(this).find(":selected").val() );
//});

var i =1;

    $(document).ready(function() {
        var dropdown = $("#edit_study_answers option:selected");
        var session = $("#answers").val();
        var len = session.length;
        var res = session.substring(1,len-1).split(",");
        var answers = (res.length==dropdown.val()) ? res.length : parseInt(dropdown.val());
        while(answers > 0){
            var div = $("<div />");
            //for(var i=0;i<len;i++)
            div.html(GetDynamicTextBox(res[i-1]));
            $("#TextBoxContainer1").append(div);
            answers--;
            i++;
        }
	 
        $('#edit_study_answers').change(function() {
            answers = $(this).val();
            //	            alert(answers);
            $("#TextBoxContainer1").html("");
            //	            var i =1;
            i = 1;
            while(answers > 0){
                var div = $("<div />");
                if(res[i-1]!==undefined) {
                    div.html(GetDynamicTextBox(res[i-1]));
                } else {
                    div.html(GetDynamicTextBox(""));
                }
            //	            		alert("This is before: "+answers);
                $("#TextBoxContainer1").append(div);
                answers--;
                i++;
            //	            		alert("This is after: "+answers);
            }
        });
    });
 
 function GetDynamicTextBox(value) {
     var place = (value=="") ? "Enter Answer" : "";
	    return '<div class="form-group"><label class="col-sm-4 control-label">Answer '+i+' *</label><div class="col-sm-4"><input name = "DynamicTextBox" class="form-control" type="text" placeholder = "' + place + '" required value = "' + value + '" /></div></div>'
	}

