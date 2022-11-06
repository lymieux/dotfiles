function rmswap
	if test -z (find $HOME/.cache/vim/swap/ -maxdepth 0 -empty)
		begin
			rm -rf $HOME/.cache/vim/swap/*
		end &> /dev/null
		echo "Swap file(s) removed"
	else
		echo "Nothing to remove"
	end
end
