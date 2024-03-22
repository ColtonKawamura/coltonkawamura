---
layout: post
title: Blog Post Generator
date: 2024-03-22 13:41:00
description: A simple bash script that creates blog post templates for me in the right place with the right stuff.
tags: vs-code
categories: computational
thumbnail: assets/img/image_post_generator.png
featured: false
disqus_comments: false
related_posts: true
---

It's a simple shell script, but this is how I can generate a post template with all the needed metadata. It requires the post image to already exists, though!

```bash
#!/bin/bash

# Prompt for post title and read into variable
read -p "What is the title of your post? " title

# Prompt for short title and read into variable
read -p "Short_title? " short_title

# Get current date and time, store in variables
date_time=$(date "+%Y-%m-%d %H:%M:%S")
date=$(date "+%Y-%m-%d")

# Prompt for description, tags, categories, and image name
read -p "Description? " description
read -p "Tags? " tags
read -p "Categories? " categories
read -p "Image_name? " image_name

# Define the file path for the post and image
file_path="/yourpath/_posts/${date}-${short_title}.md"
image_destination="/yourpath/assets/img/."

# Create the markdown file and write the content
cat > "$file_path" <<EOF
---
layout: post
title: $title
date: $date_time
description: $description
tags: $tags
categories: $categories
thumbnail: assets/img/${image_name}.png
featured: false
disqus_comments: false
related_posts: true
---

Text

***

EOF

# Find and move the image file
mv "$HOME/Desktop/${image_name}.png" "$image_destination"

```

***

<script src="https://giscus.app/client.js"
        data-repo="coltonkawamura/coltonkawamura"
        data-repo-id="R_kgDOKjP3YQ"
        data-category="comments"
        data-category-id="DIC_kwDOKjP3Yc4CaV1i"
        data-mapping="pathname"
        data-strict="0"
        data-reactions-enabled="1"
        data-emit-metadata="0"
        data-input-position="top"
        data-theme="dark"
        data-lang="en"
        data-loading="lazy"
        crossorigin="anonymous"
        async>
</script>
