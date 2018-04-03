function [p, iter]  = PageRank(G, alpha)
	TOLERANCE = 1e-7;
	[n, ~] = size(G);
	% init the basic matrix
	e = ones(n, 1);
	p = e ./ n;

	outlink = sum(G);
	dt = (outlink == 0);
	D = diag(1./(outlink+d));
	P = G*D;

	% calculate
	iter = 0;
	p_pre = e * (1/n);
	while true
		p_next = alpha*(P*p_pre+e*(dt*p_pre/n))+(1-alpha)*e/n;
		diff = abs( p_next - p_pre );
		check = false;
		for i=1:n
			if ( diff > TOLERANCE )
				check = true;
				break;
			end % if
		end % for
		
		% if it break the tolerance
		iter = iter + 1;
		p_pre = p_next;
		if check 
			break
		end % if 
	end % while
	p = p_pre;
end