/**
 * 查询学生
 */
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


/**
 * 删除学生
 */
function deleteStudent() {
    let url = '/adminController/student/';

    // alert('whats up')
    let selection = $("#deleteConditionSelect option:selected").index()
    let keyword = $("#deleteKeyWord").val();

    console.log('selection =', selection);
    console.log('keyword =', keyword);

    if (selection === 0) {
        // 按学号
        $.ajax({
            type: "DELETE",
            url: url + 'id/' + '?id=' + keyword,
            success: (res) => {
                alert("删除成功！");
                // 刷新页面
                window.location.href = window.location.href;
            },
            error: () => alert("数据查询失败")
        })
    } else {
        // 按姓名
        $.ajax({
            type: "DELETE",
            url: url + 'name/' + '?name=' + keyword,
            success: (res) => {
                alert("删除成功！");
                // 刷新页面
                window.location.href = window.location.href;
            },
            error: () => alert("数据查询失败")
        })
    }
}

/**
 * 查询要修改的学生
 */
function queryModifyStudent() {
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

                if (data == null) {
                    alert("用户不存在！");
                    return;
                }

                console.log(data);

                $("#name").html(data.name)
                $("#context").html(data.college)
                $("#id").html(data.id)
                $("#passwordInput").val(data.password)
                $("#ageInput").val(data.age)
                $("#genderFormControlSelect").val(data.gender)
                $("#majorFormControlSelect").val(data.major)
                $("#collegeFormControlSelect").val(data.college)

                if(data == null) {
                    alert("未查询到数据！");
                    return;
                }

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

                if (data == null) {
                    alert("用户不存在！");
                    return;
                }

                $("#name").html(data.name)
                $("#context").html(data.college)
                $("#id").html(data.id)
                $("#passwordInput").val(data.password)
                $("#ageInput").val(data.age)
                $("#genderFormControlSelect").val(data.gender)
                $("#majorFormControlSelect").val(data.major)
                $("#collegeFormControlSelect").val(data.college)

                if(data == null) {
                    alert("未查询到数据！");
                    return;
                }
            },
            error: () => alert("数据查询失败")
        })
    }
}

