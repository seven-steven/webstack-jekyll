# [bookmark.diqigan.cn](https://bookmark.diqigan.cn/)

> 这是一个纯静态的导航网站。
> 样式取自 [viggo](http://viggoz.com/) 开发的 [webstack.cc](https://github.com/WebStackPage/WebStackPage.github.io)。
> 内容由 [Seven](https://blog.diqigan.cn) 收集整理。

## 环境配置

### Docker 启动

   ```bash
   docker run -it \
     --rm \
     -v=$PWD:/srv/jekyll \
     -p 4000:4000 \
     jekyll/jekyll:4.2.0 jekyll serve
   ```

### Docker 编译

   ```bash
   docker run --rm -it \
     -v ${PWD}:/srv/jekyll \
     -v ${PWD}/_site:/srv/jekyll/_site \
     jekyll/builder:4.2.0 /bin/bash -c '
       gem sources -r https://rubygems.org/ -a https://gems.ruby-china.com/ && \
       bundle config mirror.https://rubygems.org https://gems.ruby-china.com && \
       bundle config --delete "mirror.https://rubygems.org" && \
       jekyll build --future'
   ```

### 手动安装

1. 参考 [安装 - Jekyll • 简单静态博客网站生成器](http://jekyllcn.com/docs/installation/) 安装 Ruby，Gem，NodeJs，Python 等软件；

1. 配置 Gem：

   ```shell
   # 移除gem默认源，改成ruby-china源
   gem sources -r https://rubygems.org/ -a https://gems.ruby-china.com/
   # 使用Gemfile和Bundle的项目，可以做下面修改，就不用修改Gemfile的source
   bundle config mirror.https://rubygems.org https://gems.ruby-china.com
   # 删除Bundle的一个镜像源
   bundle config --delete 'mirror.https://rubygems.org'
   ```

1. 安装 jekyll

   ```bash
   gem install jekyll
   ```


## 致谢

- 感谢 [JetBrains](https://www.jetbrains.com/community/opensource/) 提供开发工具支持。
