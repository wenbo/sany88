:%s/src="/src="\/M2028_2328D\//g
:%s/href="/href="\/M2028_2328D\//g

sed -i "s/三意/天地人/g" `grep '三意' -rl ./app/views`

sed -i '' -e  "s/天地人品牌设计/出未创意设计/g" `grep '天地人品牌设计' -rl ./app/views`

sed -i '' -e  "s/天地人/出未/g" `grep '天地人' -rl ./app/views`

sed -i '' -e  "s/服务模式/服务内容/g" `grep '服务模式' -rl ./app/views`

sed -i '' -e  "s/137 6189 2871/156 0187 8272/g" `grep '137 6189 2871' -rl ./app/views`

 sed -i '' -e  "s/137-6189-2871/156-0187-8272/g" `grep '137-6189-2871' -rl ./app/views`




