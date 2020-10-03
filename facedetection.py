import face_recognition
import os
import cv2

from face_recognition.face_recognition_cli import image_files_in_folder

UNKNOWN_FACES_DIR = "/home/anibs/Desktop/MLAI/FaceDet/unknown_faces/"#path of the directory which has thr images

FRAME_THICKNESS = 3
FONT_THICkNESS = 2
MODEL = "hog"


print("Processing Unknown Faces...")
for filename in os.listdir(UNKNOWN_FACES_DIR):
	print(f'Filename {filename}', end='')
	image=UNKNOWN_FACES_DIR+filename
	image = face_recognition.load_image_file(image)
	locations = face_recognition.face_locations(image, model=MODEL)
	encodings = face_recognition.face_encodings(image, locations)
	image = cv2.cvtColor(image, cv2.COLOR_RGB2BGR)

	print(f', found {len(encodings)} face(s)')
	
	for face_location in locations:

		top_left = (face_location[3], face_location[0])
		bottom_right = (face_location[1], face_location[2])

		color = [0,255,0]
		cv2.rectangle(image, top_left, bottom_right, color, FRAME_THICKNESS)

		cv2.imshow(filename, image)
		cv2.waitKey(500)
		cv2.destroyWindow(filename)
		
