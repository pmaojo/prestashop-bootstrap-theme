prestashop-bootstrap-theme
==========================
Installation
add these lines to FrontController
	// Add bootstrap
	$this->addJS(_THEME_JS_DIR_.'bootstrap.min.js');
	$this->addCSS(_THEME_CSS_DIR_.'bootstrap.min.css', 'screen');

this
	_THEME_JS_DIR_.'bootstrap-button.js'
to ProductController

