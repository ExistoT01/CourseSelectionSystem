

function queryStudent() {
    let url = '/adminController/student/';

    // alert('whats up')
    let selection = $("#deleteConditionSelect option:selected").index()
    let keyword = $("#deleteKeyWord").val();

    console.log('selection =', selection);
    console.log('keyword =', keyword);

    if (selection === 0) {
        // 按学号
        $.ajax({
            type: "GET",
            url: url + 'id/' + '?id=' + keyword,
            success: (res) => {
                let tableHTML = '';
                let data = res.data;
                $("#basic-datatable").find("tbody").html('')

                if(data == null) {
                    alert("未查询到数据！");
                    return;
                }

                if(data instanceof Array) {
                    for (let i = 0; i < data.length; ++i) {
                        tableHTML += '<tr>' +
                            '<td>' + data[i].id + '</td>' +
                            '<td>' + data[i].name + '</td>' +
                            '<td>' + data[i].gender + '</td>' +
                            '<td>' + data[i].password + '</td>' +
                            '<td>' + data[i].age + '</td>' +
                            '<td>' + data[i].major + '</td>' +
                            '<td>' + data[i].college + '</td>' +
                            '</tr>'
                    }
                } else {
                    tableHTML += '<tr>' +
                        '<td>' + data.id + '</td>' +
                        '<td>' + data.name + '</td>' +
                        '<td>' + data.gender + '</td>' +
                        '<td>' + data.password + '</td>' +
                        '<td>' + data.age + '</td>' +
                        '<td>' + data.major + '</td>' +
                        '<td>' + data.college + '</td>' +
                        '</tr>'
                }


                $("#basic-datatable").append(tableHTML);
            },
            error: () => alert("数据查询失败")
        })
    } else {
        // 按姓名
        $.ajax({
            type: "GET",
            url: url + 'name/' + '?name=' + keyword,
            success: (res) => {
                let tableHTML = '';
                let data = res.data;
                $("#basic-datatable").find("tbody").html('')

                if(data == null) {
                    alert("未查询到数据！");
                    return;
                }

                if(data instanceof Array) {
                    for (let i = 0; i < data.length; ++i) {
                        tableHTML += '<tr>' +
                            '<td>' + data[i].id + '</td>' +
                            '<td>' + data[i].name + '</td>' +
                            '<td>' + data[i].gender + '</td>' +
                            '<td>' + data[i].password + '</td>' +
                            '<td>' + data[i].age + '</td>' +
                            '<td>' + data[i].major + '</td>' +
                            '<td>' + data[i].college + '</td>' +
                            '</tr>'
                    }
                } else {
                    tableHTML += '<tr>' +
                        '<td>' + data.id + '</td>' +
                        '<td>' + data.name + '</td>' +
                        '<td>' + data.gender + '</td>' +
                        '<td>' + data.password + '</td>' +
                        '<td>' + data.age + '</td>' +
                        '<td>' + data.major + '</td>' +
                        '<td>' + data.college + '</td>' +
                        '</tr>'
                }
                $("#basic-datatable").append(tableHTML);
            },
            error: () => alert("数据查询失败")
        })
    }
}
