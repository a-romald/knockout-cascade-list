$(function() {
    
    $('#selDepts').attr('data-bind', "options: availableDepartments, optionsCaption: 'Choose department', optionsValue: function(item) {return item.deptId}, optionsText: function(item) {return item.deptTitle}, value: dept, event:{ change: getCompanies}");
    
    $('#selCompanies').attr('data-bind', "options: availableCompanies, optionsCaption: 'Choose company', optionsValue: function(item) {return item.companyId}, optionsText: function(item) {return item.companyTitle}, enable: availableCompanies().length > 0, value: company, event: {change: getProducts}");
    
    $('#selProducts').attr('data-bind', "options: availableProducts, optionsCaption: 'Choose product', optionsValue: function(item) {return item.productId}, optionsText: function(item) {return item.productTitle}, enable: availableProducts().length > 0, value: product, event: {change: showProduct}");
    
    $('#inform').attr('data-bind', "with: expProduct");
    
})