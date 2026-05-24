# 个人博客

这是一个 Hugo + Blowfish 主题的纯静态个人博客，默认部署到 Vercel 免费静态托管。

## 写文章

文章放在 `content/posts/` 目录。复制现有示例文章，修改文件名和 front matter 即可：

```md
+++
title = "文章标题"
date = 2026-05-24T10:00:00+08:00
draft = false
categories = ["技术"]
tags = ["Hugo"]
+++

正文内容写在这里。
```

提交并推送到 `main` 分支后，Vercel 会自动构建发布。

## 本地预览

安装 Hugo Extended 后运行：

```bash
hugo server -D
```

生产构建命令：

```bash
hugo --gc --minify
```
