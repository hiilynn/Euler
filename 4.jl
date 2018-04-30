pal = 0
for i = 100:999
  for j = 100:999
    if string(i*j) == reverse(string(i*j)) && pal<i*j
      pal = i*j
    end
  end
end
print(pal)
