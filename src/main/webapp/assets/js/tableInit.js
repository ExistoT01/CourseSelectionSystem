function tableInit() {
    $("#basic-datatable").bootstrapTable({
        method: "get",
        url: "/adminController/students",
        sidePagination: "server",
        pageNumber: 1,

        columns: [{
            field: 'id',
            title: '学号'
        }, {
            field: 'name',
            title: '姓名'
        }, {
            field: 'gender',
            title: '性别'
        }, {
            field: 'password',
            title: '密码'
        }, {
            field: 'age',
            title: '年龄'
        }, {
            field: 'major',
            title: '专业'
        }, {
            field: 'college',
            title: '学院'
        }],

        onLoadSuccess: function(){  //加载成功时执行
            console.info("加载成功");
        },
        onLoadError: function(){  //加载失败时执行
            console.info("加载数据失败");
        }
    })
}

tableInit()

console.log("我来过")
