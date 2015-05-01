:%s/src="/src="\/M2028_2328D\//g
:%s/href="/href="\/M2028_2328D\//g

sed -i "s/三意/天地人/g" `grep '三意' -rl ./app/views`

