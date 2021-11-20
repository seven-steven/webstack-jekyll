# ➡️ [webstack.0xl2oot.cn](https://webstack.0xl2oot.cn/) - 网址导航

本项目是 [webstack.cc](https://github.com/WebStackPage/WebStackPage.github.io) 的 [Jekyll](https://jekyllrb.com/) 版。

> 这是一个纯静态的网址导航网站，内容均由 [viggo](http://viggoz.com/) 收集并整理。项目基于bootstrap前端框架开发。

## 环境配置

1. 参考 [安装 - Jekyll • 简单静态博客网站生成器](http://jekyllcn.com/docs/installation/) 安装 Ruby，Gem，NodeJs，Python 等软件；

2. 配置 Gem：

   ```shell
   # 移除gem默认源，改成ruby-china源
   $ gem sources -r https://rubygems.org/ -a https://gems.ruby-china.com/
   # 使用Gemfile和Bundle的项目，可以做下面修改，就不用修改Gemfile的source
   $ bundle config mirror.https://rubygems.org https://gems.ruby-china.com
   # 删除Bundle的一个镜像源
   $ bundle config --delete 'mirror.https://rubygems.org'
   ```

3. 安装 jekyll

   ```shell
   gem install jekyll
   ```

### Docker 启动

```bash
sudo docker run -it \
  --rm \
  -v=$PWD:/srv/jekyll \
  -p 4000:4000 \
  jekyll/jekyll jekyll serve
```
