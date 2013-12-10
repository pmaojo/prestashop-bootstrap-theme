{if $MENU != ''}
	</div>
<div class="row">
          <div class="col-lg-12">
            <div class="page-header">
              <h1 id="navbar">Navbar</h1>
            </div>

              <div class="navbar navbar-default">
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                  <a class="navbar-brand" href="#">Brand</a>
                </div>
                <div class="navbar-collapse collapse navbar-responsive-collapse">
                  <ul class="nav navbar-nav">
                        <li><a href="index.php">Inicio</a></li>
                    {$MENU}
<!--                        <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                <ul class="dropdown-menu"> 
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li class="divider"></li>
                        <li class="dropdown-header">Dropdown header</li>
                        <li><a href="#">Separated link</a></li>
                        <li><a href="#">One more separated link</a></li>
                      </ul>
                    </li>-->
                  </ul>
{if $MENU_SEARCH}
														<form class="navbar-form" role="search">
        <div class="input-group">
									<input type="hidden" name="controller" value="search"/>
									<input type="hidden" value="position" name="orderby"/>
									<input type="hidden" value="desc" name="orderway"/>
									<input type="text" name="search_query" value="{if isset($smarty.get.search_query)}{$smarty.get.search_query|escape:'htmlall':'UTF-8'}{/if}" />
            <div class="input-group-btn">
                <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
            </div>

        </div>
					{/if}                  
                </div><!-- /.nav-collapse -->
              </div><!-- /.navbar -->
          </div>
        </div>{/if}
<div class="container" style="margin-left:0px;">
