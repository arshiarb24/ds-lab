{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "provenance": [],
      "authorship_tag": "ABX9TyNEXH+vH54fVLpAn2sOQcNU",
      "include_colab_link": true
    },
    "kernelspec": {
      "name": "python3",
      "display_name": "Python 3"
    },
    "language_info": {
      "name": "python"
    }
  },
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {
        "id": "view-in-github",
        "colab_type": "text"
      },
      "source": [
        "<a href=\"https://colab.research.google.com/github/arshiarb24/ds-lab/blob/main/deletion.ll\" target=\"_parent\"><img src=\"https://colab.research.google.com/assets/colab-badge.svg\" alt=\"Open In Colab\"/></a>"
      ]
    },
    {
      "cell_type": "code",
      "source": [
        "class Node:\n",
        "    def __init__(self, data):\n",
        "        self.data = data\n",
        "        self.next = None\n",
        "\n",
        "class LinkedList:\n",
        "    def __init__(self):\n",
        "        self.head = None\n",
        "\n",
        "    def printList(self):\n",
        "        temp = self.head\n",
        "        while (temp):\n",
        "            print(temp.data)\n",
        "            temp = temp.next\n",
        "\n",
        "if __name__ == '__main__':\n",
        "    llist = LinkedList()\n",
        "    llist.head = Node(1)\n",
        "    second = Node(2)\n",
        "    third = Node(3)\n",
        "\n",
        "    llist.head.next = second\n",
        "    second.next = third\n",
        "\n",
        "    llist.printList()"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "bv_VY3rCfXoA",
        "outputId": "d003d189-50b8-450c-9727-d38066d7f682"
      },
      "execution_count": 4,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "1\n",
            "2\n",
            "3\n"
          ]
        }
      ]
    }
  ]
}