# Clear Blog
Static blog made with middleman
![ClearBlog's logo](/source/images/clearblog.svg)

[Live demo](https://treyssatvincent.github.io/clearblog/)


## Installation
You need to install [Middleman](https://middlemanapp.com/) before.
Then, clone this repository and run `bundle install` in the directory.


You can now run `middleman server`, and `middleman build`.

Don't forget to check the file `data/config.yml`.


## Use
### Create an article
Run this command in the blog directory :
```
# middleman article "This is my great article"
```

### Attach images
Put the image in `source/images/` and then add
```
image: "/images/image.jpg"
```
in the top of the article between :
```
---
---
```
The best width for the images is 1200px.

### Create a page
Create a file `exemple.html.erb` in `source/` and add to it :
```
---
layout: "page"
title: "Exemple"
slug: "exemple"
---
```
, then add a file `exemple.md` in `data/` and write the content of your page into it.

## Credit
Using [Middleman](https://github.com/middleman/middleman) (under MIT License).
The 3 pictures provided are licensed under [Unsplash Licence](https://unsplash.com/license) and taken by [Cole Patrick](https://unsplash.com/@colepatrick).

## License
This blog template is licensed under MIT License.
The logo is licensed under the Creative Commons Attribution 4.0 International License.
