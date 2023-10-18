PROJECT_NAME = meet_hub
VOLNAME = meetHub

buildMac:
	flutter build macos --release --no-tree-shake-icons && make dmg

dmg:
	rm -rf ~/$(PROJECT_NAME)_build.dmg && hdiutil create -size 100m -fs APFS -volname $(VOLNAME) -attach ~/$(PROJECT_NAME)_build.dmg && make copy && make ln && make quit && make format

copy:
	cp -R ./build/macos/Build/Products/Release/$(PROJECT_NAME).app /Volumes/$(VOLNAME)/ && sleep 2;

ln:
	ln -s /Applications /Volumes/$(VOLNAME)/Applications

quit:
	hdiutil detach $$(hdiutil info | grep $(VOLNAME) | grep "/dev/disk" | awk '{print $$1}')

format:
	rm -rf ~/$(PROJECT_NAME).dmg && hdiutil convert ~/$(PROJECT_NAME)_build.dmg -format UDZO -o ~/$(PROJECT_NAME).dmg && rm -rf ~/$(PROJECT_NAME)_build.dmg

