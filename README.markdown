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

1. Input the following into `config/settings.yml`
2. Your competition **title**, **description**, and **group url**
3. A link to your **terms**, if needed. Otherwise, leave blank.
4. Customize the embedded **player_params** as needed. You can view a full list of parameters [here](http://wiki.github.com/soundcloud/Widget-JS-API/widget-options)
5. See *Facebook Like Button* below for more information regarding **facebook_id**
6. Set the **upload_limit** size in Kilobytes. (Set to 10MBs by default for easy deployment on Heroku.)
7. Adjust the default remix **description**, **tag_list**, and **downloadable** parameters. (These will be automagically applied to all remixes uploaded.)

### Facebook Like Button (optional)

If you'd like to use the Facebook "Like" button on your application, you'll need to create a new Facebook App, copy its ID, and add it to your `config/settings.yml`. Here's how you do that:

1. [Go here](http://www.facebook.com/developers/createapp.php), name your app, agree to the terms, and click `Create Application`
2. Copy your **Application ID** and paste it into the **facebook_id**  field of `config/settings.yml`
3. Back on your Facebook app's edit page, click `Connect` in the left column
4. Input the url to where your deployed app will reside into the **Connect URL** field (eg. http://soundcloud-remix.heroku.com)
5. Click `Save Changes`

# Customize CSS and Images

### Images

* `public/images/bg.jpg`: background image used throughout the app. Replace with something around _1280 x 960_ pixels
* `public/images/logo.png`: logo that appears in the top left corner of your app. Replace with another _transparent png_ of your choosing.
* `public/images/artwork.jpg`: a square _200 x 200_ pixel image that is applied to every remix upload.

### CSS

Location...
