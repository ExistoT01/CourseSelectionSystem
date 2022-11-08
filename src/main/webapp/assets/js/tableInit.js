// 睡眠函数
function sleep (time) {
    return new Promise((resolve) => setTimeout(resolve, time));
}


function tableInit() {
    let url = '/adminController/students';

    $.ajax({
        method: "get",
        url: url,
        success: (res) => {
            let tableHTML = '';
            let data = res.data;
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
            }

            $("#basic-datatable").append(tableHTML);
        },
        error: () => alert("数据查询失败")
    });
}

tableInit()

