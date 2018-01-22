all:	k8s.png

view:
	feh k8s.png

clean:
	rm -f k8s.dot k8s.png *~

k8s.dot:
	./viz > k8s.dot

k8s.png: k8s.dot
	dot -T png -o k8s.png k8s.dot
