
function addStudentFunc() {
    let url = '/adminController/addStudent';

    let id = $("#idInput").val();
    let password = $("#passwordInput").val();
    let name = $("#nameInput").val();
    let age = $("#ageInput").val();
    let gender = $("#genderFormControlSelect option:selected").text();
    let major = $("#majorFormControlSelect option:selected").text();
    let college = $("#collegeFormControlSelect option:selected").text();

    let data = {
        "id": id,
        "name": name,
        "gender": gender,
        "password": password,
        "age": age,
        "major": major,
        "college": college
    }

    console.log(data)



    $.ajax({
        type: "POST",
        url: url,
        data: JSON.stringify(data),
        contentType: "application/json",
        success: (res) => {
            console.log(res)
        }
    })

}