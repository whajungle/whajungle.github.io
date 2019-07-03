# ABOUT GalBumToo

galbum2 - its a simple photos albums extractor converter from https://photos.google.com
to simple usable formats like a  plain text, markdown, html.

no need any instalation or any deps! no gui easy usage via command line.

easy custom via command args and templates

# STATUS

as is ! test ! beta ! experimental !

# USAGE

just one share link to album like a https://photos.app.goo.gl/\_17chars\_H\_A\_S\_H\_

    galbum SRC [args] > output

markdown format output

    galbum https://photos.app.goo.gl/VWQ63ZYhNPAA6Maq8 -w > album.md

# ARGS

    -w          markdown output
    -s          add pace after each photo
    -x          html output
    -W  WIDTH   force photo width
    -H  HEIGHT  force photo height
    -M          meta output [ 1|2|stderr|stdout|no]
    -q          be quiet
    -S          no source
    -T          no title
    -X          no text
    -C          no count
    -P          only photos same as -S -T -X -C
    -MX NUM     max photo perl line
    -D NUM      doble thumb size or *NUM
    -r          ignore cache
    -BGI xxxxxx bg color

# LINKS

- [https://github.com/hyphop/galbum2](https://github.com/hyphop/galbum2)

# AUTHOR

    ## hyphop ##

# POD ERRORS

Hey! **The above document had some coding errors, which are explained below:**

- Around line 61:

    You forgot a '=back' before '=head1'
