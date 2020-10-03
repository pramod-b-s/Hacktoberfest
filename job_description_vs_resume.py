import docx2txt
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.metrics.pairwise import cosine_similarity
cv=CountVectorizer()


#print("hello")
#check whether the imported lib is working
resume=docx2txt.process("Resume.docx")
print(resume)
jobdesc=docx2txt.process("jobdesc.docx")
print(jobdesc)



text=[resume, jobdesc]
count_matrix=cv.fit_transform(text)

print("\nSimilarity Scores : \n")
print(cosine_similarity(count_matrix))

matchper=cosine_similarity(count_matrix)[0][1]*100
matchper=round(matchper, 2)
print("\nYour resume matches about "+str(matchper)+" % of job description")
