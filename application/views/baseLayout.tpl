<!DOCTYPE html>
<html>
<head>
    <title>{block name="title"}{/block} - Centreon : IT Monitoring</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="" type="image/x-icon">
    {foreach from=$cssFileList item='cssFile'}
    {$cssFile|css}
    {/foreach}
</head>
<body>
<nav class="navbar navbar-default navbar-static-top topbar" role="navigation">
  <div class="navbar-header">
    <a href="/" class="navbar-brand">{block name="appname"}Centreon{/block}</a>
  </div>
  <div class="navbar-right">
    <ul class="nav navbar-nav navbar-left">
      <li class="notif">
        <a href="#" class="dropdown-toggle drop-avatar" data-toggle="dropdown">
          <i class="fa fa-envelope"></i>
        </a>
      </li>
      <li class="time">
        <span class=""></span>
      </li>
      <li class="user">
        <a href="#" class="dropdown-toggle drop-avatar" data-toggle="dropdown">
          <i class="fa fa-user"></i>
        </a>
        <ul class="dropdown-menu">
          <li>
            <div class="btn-group btn-group-sm">
              <button type="button" class="btn btn-light">Light</button>
              <button type="button" class="btn btn-dark">Dark</button>
            </div>
          </li>
        </ul>
      </li>
    </ul>
  </div>
</nav>
{block name="full-content"}
<div id="main">
</div>
{/block}
<nav class="navbar navbar-default navbar-static-bottom bottombar">
<div class="footer">
    <div class="pull-left">Centreon - Copyright &copy; 2005 - 2014 Merethis</div>
    <div class="pull-right">
        <a href="#" id="footer-button"><i class="fa fa-chevron-circle-up"></i></a>
    </div>
</div>
<div class="footer-extended">
    <div class="center-block">
        <a href="http://forge.centreon.com">Forge</a>
        <a href="http://forge.centreon.com/projects/centreon/issues/new">Found a bug</a>
    </div>
</div>
</nav>
{foreach from=$jsBottomFileList item='jsFile'}
{$jsFile|js}
{/foreach}
<script>
$(document).ready(function() {
    resizeContent();
    $('.btn-light').on('click', function() {
        switchTheme('light');
    });
    $('.btn-dark').on('click', function() {
        switchTheme('dark');
    });
    $('#footer-button').on('click', function(e) {
        e.preventDefault();
        e.stopPropagation();
        toggleFooter();
    });
    $(window).on('resize', function() {
        resizeContent();
    });
});
</script>
{block name="javascript-bottom"}{/block}
</body>
</html>
