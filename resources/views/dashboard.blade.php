<!DOCTYPE html>
<html>
<head>
<title>PI Datacenters</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="csrf-token" content="{{ csrf_token() }}">
<!--Bootsrap 4 CDN-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link rel="stylesheet" type="text/css" href="{{url('style.css')}}">

</head>
<body>
<div class="container-fluid">
  <div class="row no-gutter">
    <div class="col-md-8 offset-md-2">
      <div class="login d-flex align-items-center py-5">
        <div class="container">
          <div class="row">
            <div class="col-md-9 col-lg-8 mx-auto">
              <h3 class="login-heading mb-4">Welcome Dashboard!</h3>
              <div class="card">
                  <div class="card-body">
                    <a class="small" href="{{url('logout')}}">Logout</a>
                  </div>
              </div>
              <div class="card">
                <div class="card-body">
                    <div class="row">
                        <h2>Users Table</h2>
                        <p></p>
                        <table class="table">
                          <thead>
                            <tr>
                              <th>User Name</th>
                              <th>Email</th>
                              <th>Action</th>
                            </tr>
                          </thead>
                          <tbody>
                            @foreach($users as $user)
                            <tr>
                              <td> {{ $user->name }}</td>
                              <td> {{ $user->email }}</td>
                              <td>
                                <form action="{{ url('api/destroy/'.$user->id) }}" method="POST" id="deleteUserForm">


                                    <a class="btn btn-primary" href="{{ route('admin.editUser', $user->id) }}">Edit</a>

                                    @csrf
                                    @method('DELETE')

                                    <button type="submit" class="btn btn-danger">Delete</button>
                                </form>

                            </tr>
                            @endforeach
                          </tbody>
                        </table>
                      </div>
                </div>
            </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

</div>
<script>
// this is the id of the form
$("#deleteUserForm").submit(function(e) {

e.preventDefault(); // avoid to execute the actual submit of the form.

var form = $(this);
var url = form.attr('action');

$.ajax({
       type: "POST",
       url: url,
       data: form.serialize(), // serializes the form's elements.
       success: function(data)
       {
           alert("successfully deleted"); // show response from the php script.
           document.location.reload()
       }
     });


});
</script>
</body>
</html>
