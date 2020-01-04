## Q38.gitの問題です。本来、手元で作業するときは masterからブランチを切って作業する のですが、誤って、 masterブランチのまま作業してしまった 時の対処方をお答えください。
#

# A:　回答1 --x
# step1:git checkout -b add-branch
# step2:git add .
# step3:git commit -m "機能追加" 
# step4:git push origin add-branch
# プルリク
#
# # A:　回答2 

# step1:コミットしていない変更を退避
# $ git stash save　
# step2:ブランチ追加
# $ git checkout -b add-branch
# step3:新しいブランチに作業内容を復元
# $ git stash pop

