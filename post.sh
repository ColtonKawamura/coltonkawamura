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
file_path="/Users/coltonkawamura/Documents/GitHub/coltonkawamura/_posts/${date}-${short_title}.md"
image_destination="/Users/coltonkawamura/Documents/GitHub/coltonkawamura/assets/img/."

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
EOF

# Find and move the image file
mv "$HOME/Desktop/${image_name}.png" "$image_destination"
