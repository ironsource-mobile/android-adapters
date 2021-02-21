for d in /Users/alond/Downloads/android-adapters/* ; do
    file=$(echo $d | sed 's/\Users\/alond\/Downloads\/android-adapters\/\.*//')
    adapters=$(echo $file | sed 's/\///')
    cd /Users/alond/Downloads/android-adapters/$adapters
	for e in */; do
		
	    file=$(echo $e | sed "s/\Users\/alond\/Downloads\/android-adapters\/'$adapters'\.*//")
	    newFile=$(echo $file | sed 's/\///')
		#echo $newFile
	    echo 'mvn install:install-file -DgroupId=com.ironsource.adapters -DartifactId='$adapters' -Dversion='$newFile' -Dfile=/Users/alond/Downloads/android-adapters/'$adapters'/'$newFile'/'$adapters'-'$newFile'.jar -Dpackaging=jar -DgeneratePom=true -DlocalRepositoryPath=.  -DcreateChecksum=true'
		mvn install:install-file -DgroupId=com.ironsource.adapters -DartifactId=$adapters -Dversion=$newFile -Dfile=/Users/alond/Downloads/android-adapters/$adapters/$newFile/$adapters-$newFile.jar -Dpackaging=jar -DgeneratePom=true -DlocalRepositoryPath=/Users/alond/Workspace/android-adapters  -DcreateChecksum=true

	done
    #echo 'mvn install:install-file -DgroupId=com.ironsource.sdk -DartifactId=mediationsdk -Dversion='$newFile' -Dfile=/Users/alond/Downloads/android-adapters//'$newFile'/'$adapters'-'$newFile'.jar -Dpackaging=jar -DgeneratePom=true -DlocalRepositoryPath=.  -DcreateChecksum=true'
    #mvn install:install-file -DgroupId=com.ironsource.adapters -DartifactId=mediationsdk -Dversion=$newFile -Dfile=/Users/alond/Downloads/android-sdk/com/ironsource/sdk/mediationsdk/$newFile/mediationsdk-$newFile.aar -Dpackaging=aar -DgeneratePom=true -DlocalRepositoryPath=.  -DcreateChecksum=true
done


