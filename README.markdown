# SoundCloud-Remix

This app allows you to easily throw a SoundCloud Remix competition on your website. The default application has plenty of customization options but feel free to adjust and fork as needed.

# Pre-Setup

### Register a new SoundCloud application

1. Make sure you're [signed up](http://soundcloud.com/signup) for SoundCloud and logged in.
2. [Go here](http://soundcloud.com/you/apps/new), name your app, and click `Register`
3. Copy your **Consumer Key** and **Consumer Secret** for later

### Create a new Group on SoundCloud

1. [Go here](http://soundcloud.com/groups/new) and name your group (eg. My Band's Remix Contest)
2. Add a description about your contest, make sure "Automatically approve tracks" is checked, and click `Save Group`
3. Copy your **group url** from the address bar for later (eg. http://soundcloud.com/groups/soundcloud-remix)

# Configuration

### Connect with your SoundCloud app

1. Input your **Consumer Key** and **Consumer Secret** to the prokey and prosecret fields at the bottom of `config/soundcloud_auth.yml`

### Adjust Main Settings

1. Open `config/settings.yml`
2. Input your competition **title**, **description**, and **group url**
3. Add a link to your **terms**, if needed. Otherwise, leave blank.
4. Customize the **player_params** as needed. You can view a full list of parameters [here](http://wiki.github.com/soundcloud/Widget-JS-API/widget-options)
5. Set the **upload_limit** size in Kilobytes. Set to 10MBs by default for easy deployment on Heroku.
6. Adjust the default remix **description**, **tag_list**, and **downloadable** parameters. These will be automagically applied to all remixes uploaded.

