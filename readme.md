
# 🌍 PRIS-NLP Official Website

![](https://img.shields.io/badge/Framework-Hugo-green?style=flat&logo=hugo)
![](https://img.shields.io/badge/Theme-Academic-blue?style=flat&logo=hugo)
![](https://img.shields.io/badge/License-Apache--2.0-blue)

📦 This is the repository which contains all files that used to build the [**PRIS-NLP Offcicial Website**](https://pris-nlp.github.io), which mainly based on Hugo Framework.

# Update
本repo主要参考 https://github.com/MFYDev/THUIARWeb ，感谢！
1. Hugo简介：Hugo框架包含两部分，一部分是Hugo源码（除docs目录外），另一部分是Hugo源码生成的网页文件（docs目录下的所有内容），在实际部署到github时，只需要将docs目录上传到github即可。这里为了简单，直接把这两部分放在一个repo里，同时提交即可。
2. 如何更新网站内容：
    
    1. 首先要在本地配置hugo环境，参考下面的[💪 Get Started](#-get-started)，注意hugo保持是最新版本。
    2. git clone本repo，网站的主要内容都在content目录下，详细介绍见[Content](#content)
    3. 更新对应内容 TODO
    4. 本地预览更新：`hugo server --disableFastRender`
    4. 部署到github：项目根目录下执行 `sh deploy.sh`，然后在浏览器中预览（记得清空下缓存）
3. 待更新内容：

    - [x] 网站首页icon: ![](https://user-images.githubusercontent.com/21177644/138624873-000eeb2c-13aa-4b7a-8e34-513452d45172.png)
    - [x] 网站首页banner图片及文字、链接: ![](https://user-images.githubusercontent.com/21177644/138624994-1a3d8cf0-0ad6-4e4a-a0ad-8555e2514fde.png)
    - [x] Research Direction
    - [ ] People
    - [ ] Papers
    - [x] Patents
    - [ ] Project
    - [x] Textbooks: 这部分可能要删除
    - [x] Monographs: 这部分可能要删除
    - [ ] Accomplishments
    - [x] Contact Us

**📂 Refer to [Deployment files Repo](https://github.com/thuiar/thuiar.github.io) for more information.**

**👨‍💻 The website is made and maintained mainly by [@MFYDev](https://github.com/MFYDev).**

**🤞 Special thanks to [@Xiaoteng Li](https://github.com/XTenLee) and [@Kang Zhao](https://github.com/QFXY) for the contribution.**

# 📋 Table of Content

- [💪 Get Started](#-get-started)
  - [Windows](#windows)
  - [Mac](b#mac)
  - [Linux](#linux)
- [🛠 Customize the Website](#-customize-the-website)
  - [Config](#config)
  - [Content](#content)
  - [Create a Publication](#create-a-publication)
    - [🦾 Automatically](#-automatically)
    - [✍️ Manually](#%EF%B8%8F-manually)
- [🕵️‍♂️ View It Locally](#%EF%B8%8F%EF%B8%8F-view-it-locally)
- [🎉 Generate Deployment Files](#-generate-deployment-files)
- [📢 **Note!!!!!!!!!**](#-note)
- [📝 License](#-license)
  
# 💪 Get Started

Before download the repository, lets first install Hugo Extended and its prerequisites.

Choose your operating system below to get started.

## Windows

Download the latest version of **Powershell** from https://github.com/PowerShell/PowerShell/releases and install it.

Install Scope, the package manager for Windows, by pasting the following commands into Powershell and pressing the Enter ↵ key:

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
iwr -useb get.scoop.sh | iex
```

Install Hugo and its dependencies:

```powershell
scoop install git openssh go hugo-extended
```

## Mac

Open the Terminal app.

Install Homebrew, the Mac package manager, by pasting the following command and pressing the Enter ↵ key:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

Apply any Homebrew updates:

```bash
brew update && brew upgrade
```

Install Hugo and its dependencies:

```bash
brew install git golang hugo
```

Open the hidden `~/.zshrc` (or `~/.bashrc`) file in a text editor, add the following line, and restart your Terminal app so that Hugo can find the location of its Go dependency.

```bash
export PATH=$PATH:/usr/local/go/bin
```

## Linux

Using Snap:

```bash
sudo snap install --classic go
snap install hugo --channel=extended
```

Brilliant! Now you have already finished installing the requirements that the website need.

# 🛠 Customize the Website

## Config

You can change the config of the website in the `./config/_default/` folder.

**config.toml** contains the main information of the site.

**languages.toml** allows you to change the translation of the site.

**params.toml** contains core parameters of the site.

**menus.toml** allows you to change the menu in the homapage.

## Content

After you finish setting the config, all you need to do is customize the `content` folder. It contains all files that display on our website.

You just need to customize files in `/content/[language]`. Here are the demonstration of each folder in this path.

 - **authors**: Contains folks who are/were in THUIAR.
 - **home**: Files within this folder are the main pages display on the homepage. You can choose whether to show each widget by changing the value `active` in it.
 - **monograph** & **publication** & **talk** & **textbook**: Just like the folder name. The structure of files in these folders are similar with each other. Open them and you will get it.
 - **post**: There is no content in it currently. Just save this folder in case future need.

## Create a Publication

### 🦾 Automatically

The leading reference management tools enable you to export your publications to the open BibTeX format. If you are new to research we recommend managing references with **Zotero**, a popular open source tool.

In your reference management tool, create a list of your own publications and export it as a `*.bib` BibTeX file.

Python 3 is a prerequisite, so please install **Python 3** if it’s not already installed. Also, you should backup your website before continuing, or ensure that it is checked into Git so that you can review the changes that will be proposed by Academic’s admin tool later on.

Open your Terminal or Command Prompt app and install Academic’s admin tool:

```bash
pip3 install -U academic
```

Use the cd command to navigate to your website folder in the terminal.

Then import your publications with:

```bash
academic import --bibtex <path_to_your/publications.bib>
```

The tool is in beta status and intended purely to help assist you, so the generated output in the `publication` folder should be reviewed prior to publishing your site. You can also consider enhancing the output by taking a look at the front matter parameters in the files alongside the details in the *Manually* section below.

### ✍️ Manually

Alternatively, publications can be manually created using the command:

```bash
hugo new --kind publication publication/<my-publication>
```

where `<my-publication>` is the name of your publication, using hyphens (-) instead of spaces.

Then edit the parameters in `content/publication/<my-publication>/index.md` to include the details of your publication. The main parameters include:

- **title**: the title of your publication

- **date**: the date that your publication was first published (must be in a valid TOML date format)

- **publication_types**: use the following legend to specify the type of your publication, e.g. "1" for conference proceedings:

    - 0 = Uncategorized
    - 1 = Conference paper
    - 2 = Journal article
    - 3 = Preprint / Working Paper
    - 4 = Report
    - 5 = Book
    - 6 = Book section
    - 7 = Thesis 
    - 8 = Patent 

- **publication**: where your title was published - Markdown formatting is enabled here for italic etc.

- **abstract**: the summary of your publication

Further details on your publication can be written in the body of the document (after the YAML/TOML front matter) using Markdown for formatting. This text will be displayed on the publication’s page.

To enable visitors to read your work, either paste a link to your PDF in `url_pdf` or add a PDF file with the same name as your publication’s own folder to your publication’s folder and a PDF link will be automatically generated. For example, if your publication is located at `publication/photons/index.md`, place a PDF at `publication/photons/photons.pdf`.

To enable visitors to easily cite your work, export a BibTeX citation file named `cite.bib` from your reference management tool to your publication’s own folder and a citation link will be automatically generated.

# 🕵️‍♂️ View It Locally

You can run `hugo server --cacheDir=/path/to/cache` directly in the root dictionary. Then open your browser and input http://localhost:1313, now you can view the whole website locally.

If you are a Windows user, you can also edit the value of `--cacheDir` to the cache path in [view.bat](/view.bat). Then double click on it and you can view it locally.

# 🎉 Generate Deployment Files

Just run `hugo --baseUrl="https://thuiar.github.io --cacheDir=/path/to/cache"`, then the `public` folder is the deployment folder that you need.

If you are a Windows user, you can also edit the value of `--cacheDir` to the cache path in [generate.bat](/generate.bat). Then double click on it and you can build it locally.

# 📢 **Note!!!!!!!!!**

**The value of `--cacheDir=/path/to/cache` must be set correctly for Windows user, or after you change some file names or folder names, Hugo might cannot build the site anymore!**

# 📝 License

Copyright © [MFYDev（孟繁阳）](https://github.com/MFYDev)

This project is [Apache-2.0](https://www.apache.org/licenses/LICENSE-2.0) licensed.
