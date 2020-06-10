/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



function requestStatusChange(body,textBody,val,preVal, memberid,color)
{
    $.post("AdminSeeUsersController",{type : "change", id : memberid,what : "UserStatus", value : val },function( data ) {
        //alert( "Data Loaded: " + JSON.stringify(data )+"<br/1>"+data.length);
        if(data == "false")
        {

        }else
        {
           body.style.backgroundColor = color;
           var text = textBody.innerHTML;
           text = text.replace(preVal,val);
           textBody.innerHTML = text;

        }

    });



}


function changeUserStatus()
{
    var button = document.getElementById("UserStatusButton");
    var field = document.getElementById("UserStatus");

    if(button !== null && field !== null )
    {
        var currentValue = field.innerHTML;
        var color = "";
        if(currentValue.contains("NA"))
        {
            currentValue = "APPROVED";
            previousValue = "NA";
            color = "lightblue";
        }else
        {
            currentValue = "NA";
            previousValue = "APPROVED";
            color = "white";
        }
        var url_string = window.location.href.toString();
        var url = new URL(url_string);
        var c = url.searchParams.get("userid");
        //console.log(c);
        //console.log(unescape(currentValue));
        requestStatusChange(button,field,currentValue, previousValue,c,color);
    }
}

function requestClaimStatusChange(body,claimId,toStatus)
{
    $.post("AdminSeeUsersController",{type : "change", id : claimId,what : "ClaimState", value : toStatus },function( data ) {
        //alert( "Data Loaded: " + JSON.stringify(data )+"<br/1>"+data.length);
        if(data == "false")
        {

        }else
        {
           var prev = body.innerHTML;
           body.innerHTML= toStatus;
           var total = document.getElementById("claim-total");
           var ammount = document.getElementById("claim-ammount-"+claimId);
           if(total !== null && ammount !== null)
           {
               var str = total.innerHTML;
               str = str.replace("\u00A3","");
               var val = parseFloat(str);
               str = ammount.innerHTML;
               str = str.replace("\u00A3","");

               if(toStatus.contains("APPROVED"))
               {
                   val += parseFloat(str);
               }else
               {
                   if(!prev.contains("NA"))
                      val -= parseFloat(str);
               }

               total.innerHTML = "\u00A3"+val;


           }
        }

    });

}




function changeClaimStatus(claimId,toStatus)
{
    //console.log(claimId);
    //console.log(toStatus);
    var body = document.getElementById("claim-"+claimId);
    if(body !== null)
    {
        if(!body.innerHTML.contains(toStatus))
        {
                requestClaimStatusChange(body,claimId,toStatus);
        }
    }

}

function requestChargeMember(body,memberId)
{
    $.post("AdminSeeUsersController",{type : "change", id :memberId,what : "balance", value : "claims" },function( data ) {
        //alert( "Data Loaded: " + JSON.stringify(data ));
        if(data == "false")
        {

        }else
        {
            var str = body.innerHTML;
            var n = str.indexOf("</b>")+4;
            var val = parseFloat(str.substring(n+1,str.length));
            str = str.substring(0,n);
            val += parseFloat(data);
            str = str+"\u00A3"+val;
            body.innerHTML=str;
        }

    });

}


function chargeAnnual()
{
    var body = document.getElementById("member-areas");
    if(body !== null)
    {
         var url_string = window.location.href.toString();
        var url = new URL(url_string);
        var c = url.searchParams.get("userid");

       // console.log(c);
        //console.log(body.innerHTML);

        requestChargeMember(body ,c);
    }
}







$(document).ajaxError(function (event, jqxhr, settings, thrownError) {

    alert( "Please Refersh page");
});
