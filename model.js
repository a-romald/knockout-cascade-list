$(function() {
    
    // Constructor for an object with two properties
    var Department = function(title, id) {
        this.deptTitle = title;
        this.deptId = id;   
    };
    
    var Company = function(title, id) {
        this.companyTitle = title;
        this.companyId = id;   
    };
    
    var Product = function(title, id) {
        this.productTitle = title;
        this.productId = id;   
    };
    
    var Good = function(data) {
        this.goodTitle = data.title;
        this.goodId = data.id;
        this.goodPrice = data.price;
        this.goodFeatures = data.features;   
    };
    
    
    
    //viewModel
    var viewModel = {
        availableDepartments: ko.observableArray([]),
        availableCompanies: ko.observableArray([]),
        availableProducts: ko.observableArray([]),
        expProduct: ko.observable(),
        
        getDepts: function() {
            //Initial load of departments
            $.ajax({
                type: 'GET',
                url: 'response.php?option=depts',
                dataType: 'json',
                success: function getdepts(data) {
                    $('#inform').css('visibility', 'hidden');
                    $.each(data, function() {
                        //Add options from json from server
                        viewModel.availableDepartments.push( new Department(this.title, this.id));
                    });
                }
            });
        },
        
        dept: ko.observable(),
        getCompanies: function() {
            var dept = viewModel.dept;
            $.ajax({
                type: 'GET',
                url: 'response.php',
                data: {dept: dept, option: 'companies'}, //Sent data
                dataType: 'json',
                success: function getcompanies(data) {
                    $('#inform').css('visibility', 'hidden');
                    viewModel.availableCompanies([]);
                    $.each(data, function() {
                        viewModel.availableCompanies.push( new Company(this.title, this.id));
                    });
                }
            });
        },
        
        company: ko.observable(),
        getProducts: function() {
            var company = viewModel.company;
            $.ajax({
                type: 'GET',
                url: 'response.php',
                data: {company: company, option: 'products'}, //Sent data
                dataType: 'json',
                success: function getproducts(data) {
                    $('#inform').css('visibility', 'hidden');
                    viewModel.availableProducts([]);
                    $.each(data, function() {
                        viewModel.availableProducts.push( new Product(this.title, this.id));
                    });
                }
            });
        },
        
        product: ko.observable(),
        showProduct: function() {
            var product = viewModel.product;
            $.ajax({
                type: 'GET',
                url: 'response.php',
                data: {product: product, option: 'good'}, //Sent data
                dataType: 'json',
                success: function getproduct(data) {
                    if (data.features) {$('#inform').css('visibility', 'visible');}
                    viewModel.expProduct({});
                    viewModel.expProduct( new Good(data) );
              }
            });
        }
        
    };
    
    
    
    
    ko.applyBindings(viewModel);
    viewModel.getDepts();
        
})