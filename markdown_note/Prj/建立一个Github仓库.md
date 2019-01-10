# Github使用手册
## 1.创建仓库
- 在GITHUB上点击
> Create a new repository
- 填写Repo name 
- 填写Description
- 加入license
- Creeate repository
---
## 2.本地clone建立的Repository
> git clone [[GitHub - 7bao/boot: nasm boot from](https://github.com/7bao/boot.git)](https://github.com/7bao/boot.git)
> git add file.c
> git commit -m "info"
> git push

---

## 3. 提交所有变化

### 3.1 提交所有新文件

> git status
>
> git add -A
>
> git commit -a -m "message"

### 3.2  上传版本

> gti push

## 4. 提交被修改和被删除的变化（不包括新文件）

> git add -u

## 5. 提交新文件和被修改的文件，不包括被删除的文件

> git add .