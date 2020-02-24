function result = arr_operations(A,B,mode)
if (mode == "a")
    A*B;
elseif mode == "b"
    if (isinf(inv(A))
        print("Matrix is singular")
    else
        inv(A);
    end 
elseif mode == "c"
    sum(A); 
    sum(B);
    if (sum(A)>sum(B))
        print(sum(A));
    else
        print(sum(B));
    end
elseif mode == "d"
    print(A./B);
elseif mode == "e"
    print(toeplitz(A));
elseif mode == "f"
    print(mean(A)) 
    A(A<mean(A))=0;
    A(A>mean(A))=1;
    print(A);
end
end
