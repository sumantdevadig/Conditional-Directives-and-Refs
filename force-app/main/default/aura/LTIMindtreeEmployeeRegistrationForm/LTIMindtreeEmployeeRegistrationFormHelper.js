({
	helperMethod : function(cmp,evnt) {
		alert('Yes sir,Iam your helper.please let me know');
        var eName = cmp.get("v.empName");
        alert('Emp Name ='+eName);
        var eFName = cmp.get("v.empFatherName");
        alert('Emp Father Name ='+eFName);
        var eAddress = cmp.get("v.empAddress");
        alert('Emp Address ='+eAddress);
        var eDept = cmp.get("v.empDept");
        alert('Emp Dept ='+eDept);
        var eSalary = cmp.get("v.empSalary");
        alert('Emp Salry ='+eSalary);
        var action = cmp.get('c.insertEmpDetails');
        action.setParams({
            "enm" : eName,
            "efnm" : eFName,
            "eaddr" : eAddress,
            "edpt" : eDept,
            "esal" : eSalary
        });
        action.setCallback(this, function(a) {
        var sate = a.getState();
        if(state=='SUCCESS'){
            alert('Record Inserted Successfully..');  
        }
});
    $A.enqueueAction(action);
    
}
 })