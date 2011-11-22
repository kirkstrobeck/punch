#Punch ! *a photography ensemble*

### Demo photography and links from the inspired [Kimberly Warner](http://kimberlywarner.com/)

## Features

- Everything is drag-and-drop sort !
- Dynamic galleries
- Add external links
- Links pop up in new window if on a different sever
- iPhone, iPad compatible (not yet optimized)
- Link to large or small galleries, ie.
	* Live example
		* [http://kimberlywarner.com/street/1000/](http://kimberlywarner.com/street/1000/)
		* [http://kimberlywarner.com/street/100/](http://kimberlywarner.com/street/100/)
	* Local example (post install)
		* [http://punch/street/1000/](http://punch/street/1000/)
		* [http://punch/street/100/](http://punch/street/100/)
- Dynamic site name
- **It’s a community project ! So we can all make it better :)**

## Screenshots

- [Gallery navigation](http://see.weareinto.com/C1Ow)
- [Add external links](http://see.weareinto.com/C0JV)
- [Normal gallery](http://see.weareinto.com/C0yZ)
- [HD gallery](http://see.weareinto.com/C1Kq)
- [Thumbnail gallery](http://see.weareinto.com/C0X0)

## Instructions 

1. Download by running
	
		git clone https://github.com/kirkstrobeck/punch
		cd punch
		git submodule update --init
	
	
1. Drop the `httpdocs` files on your webserver ( we recommend a local server called `punch` )
1. Install the MYSQL file from the `mysql` folder
1. Log in to `/symphony` with the credentials
	* admin
	* Ib23_UBi4ub
1. Be sure to check line `$('a').bind` function in `js/common.js` to add your server environments.
1. Rock n’ roll !