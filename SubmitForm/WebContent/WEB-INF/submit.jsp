<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
html, body {
  color: #ccc;
  background:  #47315A  ;
  font-family: Calibri;
}

.container {
  width: 360px;
  margin: 0 auto;
  padding: 5px 20px 0 20px;
  border: 2px solid #ccc;
  border-radius: 7px;
}

.container legend {
  color: #ccc;
  margin: 0 0 0 280px;
  padding: 0;
  letter-spacing: 2px;
}

.wrapper {
  margin: 0 0 20px 0;
}

.hint {
  color: #ccc;
  margin: 0;
  font-size: 12px;
  text-align: justify;
}

.lbl-tb {
  font-size: 12px;
  text-transform: uppercase;
}

.frm-ctrl {
  color: #eee;
  background: transparent;
  margin: 5px 0;
  padding: 5px;
  border: 1px solid #ccc;
  border-radius: 3px;
  outline: none;
  font-family: Calibri;
}

.tb {
  width: 350px;
  font-size: 19px;
}

.btn {
  width: 360px;
  height: 40px;
  text-transform: uppercase;
  letter-spacing: 2px;
  cursor: pointer;
  transition: all 0.2s
}

.btn:hover {
  color: #2D3945;
  background: #eee;
}

.btn:active {
  border: 1px solid #333;
}
</style>
</head>
<body>

<fieldset class="container" method="post" action="submit">
  <legend><i class="fa fa-empire fa-4x"></i></legend>
  <div class="wrapper">
    <label for="tbUnm" class="lbl-tb"><i class="fa fa-user fa-fw"></i> Username</label>
    <br />
    <input id="tbUnm" type="text" class="frm-ctrl tb" spellcheck="false" autocomplete="off" />
    <p class="hint">This name will be your unique identity on our website</p>
  </div>
  <div class="wrapper">
    <label for="tbEmail" class="lbl-tb"><i class="fa fa-envelope-o fa-fw"></i> Email</label>
    <br />
    <input id="tbEmail" type="text" class="frm-ctrl tb" spellcheck="false" autocomplete="off" />
    <p class="hint">We will be using this email address to convey you important updates and announcements</p>
  </div>
  <div class="wrapper">
    <label for="tbPwd1" class="lbl-tb"><i class="fa fa-unlock fa-fw"></i> Password</label>
    <br />
    <input id="tbPwd1" type="password" class="frm-ctrl tb" />
    <p class="hint">The password should have atleast three of these: lowercase characters, uppercase characters, numbers and symbols</p>
  </div>
  <div class="wrapper">
    <label for="tbPwd2" class="lbl-tb"><i class="fa fa-unlock fa-fw"></i> Confirm password</label>
    <br />
    <input id="tbPwd2" type="password" class="frm-ctrl tb" />
    <p class="hint">Re-type the above password to confirm it</p>
  </div>
  <div class="wrapper">
    <input type="submit" class="frm-ctrl btn" />
  </div>
</fieldset>

<c:if test="${ !empty form.results }">
<p><c:out value="${form.results}"/></p></c:if>


</body>
</html>